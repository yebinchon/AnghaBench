
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_subsystem {int * chps; } ;


 int __MAX_CHPID ;
 int chp_add_cmg_attr (int ) ;
 int chp_remove_cmg_attr (int ) ;

__attribute__((used)) static int
chsc_add_cmg_attr(struct channel_subsystem *css)
{
 int i, ret;

 ret = 0;
 for (i = 0; i <= __MAX_CHPID; i++) {
  if (!css->chps[i])
   continue;
  ret = chp_add_cmg_attr(css->chps[i]);
  if (ret)
   goto cleanup;
 }
 return ret;
cleanup:
 for (--i; i >= 0; i--) {
  if (!css->chps[i])
   continue;
  chp_remove_cmg_attr(css->chps[i]);
 }
 return ret;
}
