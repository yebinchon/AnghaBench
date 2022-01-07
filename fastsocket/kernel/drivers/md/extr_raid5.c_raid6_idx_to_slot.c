
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int pd_idx; int qd_idx; scalar_t__ ddf_layout; } ;



__attribute__((used)) static int raid6_idx_to_slot(int idx, struct stripe_head *sh,
        int *count, int syndrome_disks)
{
 int slot = *count;

 if (sh->ddf_layout)
  (*count)++;
 if (idx == sh->pd_idx)
  return syndrome_disks;
 if (idx == sh->qd_idx)
  return syndrome_disks + 1;
 if (!sh->ddf_layout)
  (*count)++;
 return slot;
}
