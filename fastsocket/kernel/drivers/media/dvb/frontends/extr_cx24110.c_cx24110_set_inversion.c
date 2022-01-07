
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx24110_state {int dummy; } ;
typedef int fe_spectral_inversion_t ;


 int EINVAL ;



 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int cx24110_set_inversion (struct cx24110_state* state, fe_spectral_inversion_t inversion)
{


 switch (inversion) {
 case 129:
  cx24110_writereg(state,0x37,cx24110_readreg(state,0x37)|0x1);

  cx24110_writereg(state,0x5,cx24110_readreg(state,0x5)&0xf7);

  cx24110_writereg(state,0x22,cx24110_readreg(state,0x22)&0xef);



  break;
 case 128:
  cx24110_writereg(state,0x37,cx24110_readreg(state,0x37)|0x1);

  cx24110_writereg(state,0x5,cx24110_readreg(state,0x5)|0x08);

  cx24110_writereg(state,0x22,cx24110_readreg(state,0x22)|0x10);

  break;
 case 130:
  cx24110_writereg(state,0x37,cx24110_readreg(state,0x37)&0xfe);

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
