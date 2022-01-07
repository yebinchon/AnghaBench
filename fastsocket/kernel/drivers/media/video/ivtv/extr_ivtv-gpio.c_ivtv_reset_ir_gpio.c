
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv {TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ IVTV_CARD_PVR_150 ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_REG_GPIO_DIR ;
 int IVTV_REG_GPIO_OUT ;
 int msecs_to_jiffies (int) ;
 int read_reg (int ) ;
 int schedule_timeout_interruptible (int ) ;
 int write_reg (int,int ) ;

void ivtv_reset_ir_gpio(struct ivtv *itv)
{
 int curdir, curout;

 if (itv->card->type != IVTV_CARD_PVR_150)
  return;
 IVTV_DEBUG_INFO("Resetting PVR150 IR\n");
 curout = read_reg(IVTV_REG_GPIO_OUT);
 curdir = read_reg(IVTV_REG_GPIO_DIR);
 curdir |= 0x80;
 write_reg(curdir, IVTV_REG_GPIO_DIR);
 curout = (curout & ~0xF) | 1;
 write_reg(curout, IVTV_REG_GPIO_OUT);

 schedule_timeout_interruptible(msecs_to_jiffies(1));
 curout |= 2;
 write_reg(curout, IVTV_REG_GPIO_OUT);
 curdir &= ~0x80;
 write_reg(curdir, IVTV_REG_GPIO_DIR);
}
