
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t word ;
typedef size_t byte ;
struct TYPE_6__ {TYPE_1__* RBuffer; } ;
struct TYPE_7__ {TYPE_2__ Sig; } ;
struct TYPE_5__ {size_t* P; int length; } ;
typedef TYPE_3__ PLCI ;


 size_t CAD ;
 size_t CONN_NR ;
 size_t ESC ;
 size_t OAD ;
 size_t SHIFT ;
 int dbug (int,int ) ;
 int dprintf (char*,size_t,size_t) ;

__attribute__((used)) static void IndParse(PLCI *plci, word *parms_id, byte **parms, byte multiIEsize)
{
  word ploc;
  byte w;
  byte wlen;
  byte codeset,lock;
  byte * in;
  word i;
  word code;
  word mIEindex = 0;
  ploc = 0;
  codeset = 0;
  lock = 0;

  in = plci->Sig.RBuffer->P;
  for(i=0; i<parms_id[0]; i++)
  {
    parms[i] = (byte *)"";
  }
  for(i=0; i<multiIEsize; i++)
  {
    parms[i] = (byte *)"";
  }

  while(ploc<plci->Sig.RBuffer->length-1) {


    w = in[ploc];

    if(w & 0x80) {


      wlen = 0;
    }
    else {
      wlen = (byte)(in[ploc+1]+1);
    }

    if((ploc+wlen) > 270) return ;
    if(lock & 0x80) lock &=0x7f;
    else codeset = lock;

    if((w&0xf0)==SHIFT) {
      codeset = in[ploc];
      if(!(codeset & 0x08)) lock = (byte)(codeset & 7);
      codeset &=7;
      lock |=0x80;
    }
    else {
      if(w==ESC && wlen>=3) code = in[ploc+2] |0x800;
      else code = w;
      code |= (codeset<<8);

      for(i=1; i<parms_id[0]+1 && parms_id[i]!=code; i++);

      if(i<parms_id[0]+1) {
        if(!multiIEsize) {
          mIEindex = i-1;
        }

        parms[mIEindex] = &in[ploc+1];
        dbug(1,dprintf("mIE[%d]=0x%x",*parms[mIEindex],in[ploc]));
        if(parms_id[i]==OAD
        || parms_id[i]==CONN_NR
        || parms_id[i]==CAD) {
          if(in[ploc+2] &0x80) {
            in[ploc+0] = (byte)(in[ploc+1]+1);
            in[ploc+1] = (byte)(in[ploc+2] &0x7f);
            in[ploc+2] = 0x80;
            parms[mIEindex] = &in[ploc];
          }
        }
        mIEindex++;
      }
    }

    ploc +=(wlen+1);
  }
  return ;
}
