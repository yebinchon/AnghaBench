
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {int id; TYPE_1__ c; } ;


 scalar_t__ bttv_debug ;
 int btwrite (int,int) ;
 int printk (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void bttv_reset_audio(struct bttv *btv)
{
 if (btv->id != 878)
  return;

 if (bttv_debug)
  printk("bttv%d: BT878A ARESET\n",btv->c.nr);
 btwrite((1<<7), 0x058);
 udelay(10);
 btwrite( 0, 0x058);
}
