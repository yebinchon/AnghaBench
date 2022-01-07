
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysinfo_3_2_2 {int count; TYPE_2__* vm; } ;
struct lgr_info {int vm_count; TYPE_1__* vm; } ;
struct TYPE_4__ {int cpi; int name; } ;
struct TYPE_3__ {int cpi; int name; } ;


 int ENOSYS ;
 int VM_LEVEL_MAX ;
 int cpascii (int ,int ,int) ;
 scalar_t__ lgr_page ;
 int min_t (int ,int ,int ) ;
 int stsi (struct sysinfo_3_2_2*,int,int,int) ;
 int u8 ;

__attribute__((used)) static void lgr_stsi_3_2_2(struct lgr_info *lgr_info)
{
 struct sysinfo_3_2_2 *si = (void *) lgr_page;
 int i;

 if (stsi(si, 3, 2, 2) == -ENOSYS)
  return;
 for (i = 0; i < min_t(u8, si->count, VM_LEVEL_MAX); i++) {
  cpascii(lgr_info->vm[i].name, si->vm[i].name,
   sizeof(si->vm[i].name));
  cpascii(lgr_info->vm[i].cpi, si->vm[i].cpi,
   sizeof(si->vm[i].cpi));
 }
 lgr_info->vm_count = si->count;
}
