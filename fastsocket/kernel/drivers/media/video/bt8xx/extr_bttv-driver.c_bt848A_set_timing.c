
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pll_ofreq; } ;
struct TYPE_4__ {int nr; } ;
struct bttv {size_t tvnorm; scalar_t__ input; scalar_t__ dig; TYPE_2__ pll; TYPE_1__ c; } ;
struct TYPE_6__ {int sram; int Fsc; } ;


 int BT848_DVSIF ;
 int BT848_TGCTRL ;
 int BT848_TGLB ;
 int** SRAM_Table ;
 TYPE_3__* bttv_tvnorms ;
 int btwrite (int,int ) ;
 int dprintk (char*,int ,int) ;
 int set_pll (struct bttv*) ;

__attribute__((used)) static void bt848A_set_timing(struct bttv *btv)
{
 int i, len;
 int table_idx = bttv_tvnorms[btv->tvnorm].sram;
 int fsc = bttv_tvnorms[btv->tvnorm].Fsc;

 if (btv->input == btv->dig) {
  dprintk("bttv%d: load digital timing table (table_idx=%d)\n",
   btv->c.nr,table_idx);


  btwrite(0x00, BT848_TGCTRL);
  btwrite(0x02, BT848_TGCTRL);
  btwrite(0x00, BT848_TGCTRL);

  len=SRAM_Table[table_idx][0];
  for(i = 1; i <= len; i++)
   btwrite(SRAM_Table[table_idx][i],BT848_TGLB);
  btv->pll.pll_ofreq = 27000000;

  set_pll(btv);
  btwrite(0x11, BT848_TGCTRL);
  btwrite(0x41, BT848_DVSIF);
 } else {
  btv->pll.pll_ofreq = fsc;
  set_pll(btv);
  btwrite(0x0, BT848_DVSIF);
 }
}
