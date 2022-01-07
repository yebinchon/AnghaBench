
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; TYPE_1__* dev; scalar_t__ ddf_layout; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct page* page; } ;


 int raid6_d0 (struct stripe_head*) ;
 int raid6_idx_to_slot (int,struct stripe_head*,int*,int) ;
 int raid6_next_disk (int,int) ;

__attribute__((used)) static int set_syndrome_sources(struct page **srcs, struct stripe_head *sh)
{
 int disks = sh->disks;
 int syndrome_disks = sh->ddf_layout ? disks : (disks - 2);
 int d0_idx = raid6_d0(sh);
 int count;
 int i;

 for (i = 0; i < disks; i++)
  srcs[i] = ((void*)0);

 count = 0;
 i = d0_idx;
 do {
  int slot = raid6_idx_to_slot(i, sh, &count, syndrome_disks);

  srcs[slot] = sh->dev[i].page;
  i = raid6_next_disk(i, disks);
 } while (i != d0_idx);

 return syndrome_disks;
}
