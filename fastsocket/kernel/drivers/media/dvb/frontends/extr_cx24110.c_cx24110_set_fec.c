
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx24110_state {int dummy; } ;
typedef size_t fe_code_rate_t ;


 int EOPNOTSUPP ;
 size_t FEC_AUTO ;
 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int const) ;

__attribute__((used)) static int cx24110_set_fec (struct cx24110_state* state, fe_code_rate_t fec)
{


 static const int rate[]={-1,1,2,3,5,7,-1};
 static const int g1[]={-1,0x01,0x02,0x05,0x15,0x45,-1};
 static const int g2[]={-1,0x01,0x03,0x06,0x1a,0x7a,-1};





 if (fec>FEC_AUTO)
  fec=FEC_AUTO;

 if (fec==FEC_AUTO) {
  cx24110_writereg(state,0x37,cx24110_readreg(state,0x37)&0xdf);

  cx24110_writereg(state,0x18,0xae);

  cx24110_writereg(state,0x05,(cx24110_readreg(state,0x05)&0xf0)|0x3);

  cx24110_writereg(state,0x22,(cx24110_readreg(state,0x22)&0xf0)|0x3);

  cx24110_writereg(state,0x1a,0x05); cx24110_writereg(state,0x1b,0x06);

  return 0;
 } else {
  cx24110_writereg(state,0x37,cx24110_readreg(state,0x37)|0x20);

  if(rate[fec]>0) {
   cx24110_writereg(state,0x05,(cx24110_readreg(state,0x05)&0xf0)|rate[fec]);

   cx24110_writereg(state,0x22,(cx24110_readreg(state,0x22)&0xf0)|rate[fec]);

   cx24110_writereg(state,0x1a,g1[fec]);
   cx24110_writereg(state,0x1b,g2[fec]);

    } else
     return -EOPNOTSUPP;

 };
 return 0;
}
