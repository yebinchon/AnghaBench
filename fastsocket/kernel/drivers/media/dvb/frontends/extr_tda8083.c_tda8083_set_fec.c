
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef scalar_t__ fe_code_rate_t ;


 int EINVAL ;
 scalar_t__ FEC_1_2 ;
 scalar_t__ FEC_8_9 ;
 scalar_t__ FEC_AUTO ;
 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_set_fec (struct tda8083_state* state, fe_code_rate_t fec)
{
 if (fec == FEC_AUTO)
  return tda8083_writereg (state, 0x07, 0xff);

 if (fec >= FEC_1_2 && fec <= FEC_8_9)
  return tda8083_writereg (state, 0x07, 1 << (FEC_8_9 - fec));

 return -EINVAL;
}
