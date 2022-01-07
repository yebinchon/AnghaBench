
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx24123_state {int dummy; } ;
typedef int fe_spectral_inversion_t ;


 int EINVAL ;



 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int cx24123_set_inversion(struct cx24123_state *state,
 fe_spectral_inversion_t inversion)
{
 u8 nom_reg = cx24123_readreg(state, 0x0e);
 u8 auto_reg = cx24123_readreg(state, 0x10);

 switch (inversion) {
 case 129:
  dprintk("inversion off\n");
  cx24123_writereg(state, 0x0e, nom_reg & ~0x80);
  cx24123_writereg(state, 0x10, auto_reg | 0x80);
  break;
 case 128:
  dprintk("inversion on\n");
  cx24123_writereg(state, 0x0e, nom_reg | 0x80);
  cx24123_writereg(state, 0x10, auto_reg | 0x80);
  break;
 case 130:
  dprintk("inversion auto\n");
  cx24123_writereg(state, 0x10, auto_reg & ~0x80);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
