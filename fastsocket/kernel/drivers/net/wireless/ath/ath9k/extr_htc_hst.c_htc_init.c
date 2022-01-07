
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int dummy; } ;


 int htc_config_pipe_credits (struct htc_target*) ;
 int htc_setup_complete (struct htc_target*) ;

int htc_init(struct htc_target *target)
{
 int ret;

 ret = htc_config_pipe_credits(target);
 if (ret)
  return ret;

 return htc_setup_complete(target);
}
