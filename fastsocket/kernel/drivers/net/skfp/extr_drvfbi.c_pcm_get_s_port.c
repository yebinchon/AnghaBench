
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int PS ;
 int SK_UNUSED (struct s_smc*) ;

int pcm_get_s_port(struct s_smc *smc)
{
 SK_UNUSED(smc) ;
 return(PS) ;
}
