
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bttv_ir {int polling; int timer; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bttv {TYPE_1__ c; struct bttv_ir* remote; } ;


 scalar_t__ BTTV_BOARD_ENLTV_FM_2 ;
 int ir_enltv_handle_key (struct bttv*) ;
 int ir_handle_key (struct bttv*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void bttv_input_timer(unsigned long data)
{
 struct bttv *btv = (struct bttv*)data;
 struct bttv_ir *ir = btv->remote;

 if (btv->c.type == BTTV_BOARD_ENLTV_FM_2)
  ir_enltv_handle_key(btv);
 else
  ir_handle_key(btv);
 mod_timer(&ir->timer, jiffies + msecs_to_jiffies(ir->polling));
}
