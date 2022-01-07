
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_5__* hdw; TYPE_4__* info; } ;
struct TYPE_10__ {int big_lock; } ;
struct TYPE_7__ {int valid_bits; int bit_names; } ;
struct TYPE_6__ {int count; int * value_names; } ;
struct TYPE_8__ {TYPE_2__ type_bitmask; TYPE_1__ type_enum; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ def; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int * boolNames ;
 int parse_tlist (char const*,unsigned int,int*,int*,int ,int ) ;
 int parse_token (char const*,unsigned int,int*,int *,int ) ;
 scalar_t__ pvr2_ctl_bitmask ;
 scalar_t__ pvr2_ctl_bool ;
 scalar_t__ pvr2_ctl_enum ;
 scalar_t__ pvr2_ctl_int ;
 int pvr2_ctrl_range_check (struct pvr2_ctrl*,int) ;

int pvr2_ctrl_sym_to_value(struct pvr2_ctrl *cptr,
      const char *ptr,unsigned int len,
      int *maskptr,int *valptr)
{
 int ret = -EINVAL;
 unsigned int cnt;

 *maskptr = 0;
 *valptr = 0;

 cnt = 0;
 while ((cnt < len) && ((ptr[cnt] <= 32) || (ptr[cnt] >= 127))) cnt++;
 len -= cnt; ptr += cnt;
 cnt = 0;
 while ((cnt < len) && ((ptr[len-(cnt+1)] <= 32) ||
          (ptr[len-(cnt+1)] >= 127))) cnt++;
 len -= cnt;

 if (!len) return -EINVAL;

 LOCK_TAKE(cptr->hdw->big_lock); do {
  if (cptr->info->type == pvr2_ctl_int) {
   ret = parse_token(ptr,len,valptr,((void*)0),0);
   if (ret >= 0) {
    ret = pvr2_ctrl_range_check(cptr,*valptr);
   }
   *maskptr = ~0;
  } else if (cptr->info->type == pvr2_ctl_bool) {
   ret = parse_token(ptr,len,valptr,boolNames,
       ARRAY_SIZE(boolNames));
   if (ret == 1) {
    *valptr = *valptr ? !0 : 0;
   } else if (ret == 0) {
    *valptr = (*valptr & 1) ? !0 : 0;
   }
   *maskptr = 1;
  } else if (cptr->info->type == pvr2_ctl_enum) {
   ret = parse_token(
    ptr,len,valptr,
    cptr->info->def.type_enum.value_names,
    cptr->info->def.type_enum.count);
   if (ret >= 0) {
    ret = pvr2_ctrl_range_check(cptr,*valptr);
   }
   *maskptr = ~0;
  } else if (cptr->info->type == pvr2_ctl_bitmask) {
   ret = parse_tlist(
    ptr,len,maskptr,valptr,
    cptr->info->def.type_bitmask.bit_names,
    cptr->info->def.type_bitmask.valid_bits);
  }
 } while(0); LOCK_GIVE(cptr->hdw->big_lock);
 return ret;
}
