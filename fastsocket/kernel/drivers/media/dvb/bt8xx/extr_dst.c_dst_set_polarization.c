
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int voltage; int* tx_tuna; } ;


 int DST_INFO ;



 int dprintk (int ,int ,int,char*) ;
 int verbose ;

__attribute__((used)) static int dst_set_polarization(struct dst_state *state)
{
 switch (state->voltage) {
 case 130:
  dprintk(verbose, DST_INFO, 1, "Polarization=[Vertical]");
  state->tx_tuna[8] &= ~0x40;
  break;
 case 129:
  dprintk(verbose, DST_INFO, 1, "Polarization=[Horizontal]");
  state->tx_tuna[8] |= 0x40;
  break;
 case 128:
  break;
 }

 return 0;
}
