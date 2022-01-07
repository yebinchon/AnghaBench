
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {int dummy; } ;


 int read_status (struct si_sm_data*) ;

__attribute__((used)) static int kcs_detect(struct si_sm_data *kcs)
{






 if (read_status(kcs) == 0xff)
  return 1;

 return 0;
}
