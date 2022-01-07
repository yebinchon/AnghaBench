
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef scalar_t__ fe_spectral_inversion_t ;


 int EINVAL ;
 scalar_t__ INVERSION_AUTO ;

__attribute__((used)) static int tda8083_set_inversion (struct tda8083_state* state, fe_spectral_inversion_t inversion)
{

 if (inversion == INVERSION_AUTO)
  return 0;

 return -EINVAL;
}
