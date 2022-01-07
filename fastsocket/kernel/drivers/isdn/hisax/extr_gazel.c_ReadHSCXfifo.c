
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int ipac; int * hscxfifo; } ;
struct TYPE_4__ {TYPE_1__ gazel; } ;
struct IsdnCardState {int subtyp; TYPE_2__ hw; } ;






 int read_fifo (int ,int *,int) ;
 int read_fifo_ipac (int ,int,int *,int) ;

__attribute__((used)) static void
ReadHSCXfifo(struct IsdnCardState *cs, int hscx, u_char * data, int size)
{
 switch (cs->subtyp) {
  case 131:
  case 130:
   read_fifo(cs->hw.gazel.hscxfifo[hscx], data, size);
   break;
  case 128:
  case 129:
   read_fifo_ipac(cs->hw.gazel.ipac, hscx * 0x40, data, size);
   break;
 }
}
