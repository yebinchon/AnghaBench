
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ duration; } ;
struct wbcir_data {int irdata_active; int irdata_error; scalar_t__ sbase; int dev; TYPE_1__ ev; int rxtrigger; scalar_t__ ebase; scalar_t__ wbase; } ;





 int LED_OFF ;
 int WBCIR_BANK_0 ;
 int WBCIR_BANK_2 ;
 int WBCIR_BANK_4 ;
 int WBCIR_BANK_5 ;
 int WBCIR_BANK_6 ;
 int WBCIR_BANK_7 ;
 int WBCIR_EXT_ENABLE ;
 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_NONE ;
 int WBCIR_IRQ_RX ;
 scalar_t__ WBCIR_REG_ECEIR_CCTL ;
 scalar_t__ WBCIR_REG_ECEIR_CTS ;
 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_REG_SP3_BGDH ;
 scalar_t__ WBCIR_REG_SP3_BGDL ;
 scalar_t__ WBCIR_REG_SP3_EXCR1 ;
 scalar_t__ WBCIR_REG_SP3_EXCR2 ;
 scalar_t__ WBCIR_REG_SP3_FCR ;
 scalar_t__ WBCIR_REG_SP3_IER ;
 scalar_t__ WBCIR_REG_SP3_IRCFG4 ;
 scalar_t__ WBCIR_REG_SP3_IRCR1 ;
 scalar_t__ WBCIR_REG_SP3_IRCR2 ;
 scalar_t__ WBCIR_REG_SP3_IRCR3 ;
 scalar_t__ WBCIR_REG_SP3_IRRXDC ;
 scalar_t__ WBCIR_REG_SP3_IRTXMC ;
 scalar_t__ WBCIR_REG_SP3_LSR ;
 scalar_t__ WBCIR_REG_SP3_MCR ;
 scalar_t__ WBCIR_REG_SP3_MSR ;
 scalar_t__ WBCIR_REG_SP3_RCCFG ;
 scalar_t__ WBCIR_REG_WCEIR_CFG1 ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 scalar_t__ WBCIR_REG_WCEIR_STS ;
 int inb (scalar_t__) ;
 scalar_t__ invert ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 int led_trigger_event (int ,int ) ;
 int outb (int,scalar_t__) ;
 int protocol ;
 int wbcir_select_bank (struct wbcir_data*,int ) ;
 int wbcir_set_bits (scalar_t__,int,int) ;

__attribute__((used)) static void
wbcir_init_hw(struct wbcir_data *data)
{
 u8 tmp;


 wbcir_select_bank(data, WBCIR_BANK_0);
 outb(WBCIR_IRQ_NONE, data->sbase + WBCIR_REG_SP3_IER);


 tmp = protocol << 4;
 if (invert)
  tmp |= 0x08;
 outb(tmp, data->wbase + WBCIR_REG_WCEIR_CTL);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CFG1, 0x4A, 0x7F);


 if (invert)
  outb(0x04, data->ebase + WBCIR_REG_ECEIR_CCTL);
 else
  outb(0x00, data->ebase + WBCIR_REG_ECEIR_CCTL);





 outb(0x10, data->ebase + WBCIR_REG_ECEIR_CTS);


 wbcir_select_bank(data, WBCIR_BANK_2);
 outb(WBCIR_EXT_ENABLE, data->sbase + WBCIR_REG_SP3_EXCR1);
 outb(0x30, data->sbase + WBCIR_REG_SP3_EXCR2);


 switch (protocol) {
 case 129:
  outb(0xA7, data->sbase + WBCIR_REG_SP3_BGDL);
  break;
 case 128:
  outb(0x53, data->sbase + WBCIR_REG_SP3_BGDL);
  break;
 case 130:
  outb(0x69, data->sbase + WBCIR_REG_SP3_BGDL);
  break;
 }
 outb(0x00, data->sbase + WBCIR_REG_SP3_BGDH);


 wbcir_select_bank(data, WBCIR_BANK_0);
 outb(0xC0, data->sbase + WBCIR_REG_SP3_MCR);
 inb(data->sbase + WBCIR_REG_SP3_LSR);
 inb(data->sbase + WBCIR_REG_SP3_MSR);


 wbcir_select_bank(data, WBCIR_BANK_7);
 outb(0x10, data->sbase + WBCIR_REG_SP3_RCCFG);


 wbcir_select_bank(data, WBCIR_BANK_4);
 outb(0x00, data->sbase + WBCIR_REG_SP3_IRCR1);


 wbcir_select_bank(data, WBCIR_BANK_5);
 outb(0x00, data->sbase + WBCIR_REG_SP3_IRCR2);


 wbcir_select_bank(data, WBCIR_BANK_6);
 outb(0x20, data->sbase + WBCIR_REG_SP3_IRCR3);


 wbcir_select_bank(data, WBCIR_BANK_7);
 outb(0xF2, data->sbase + WBCIR_REG_SP3_IRRXDC);
 outb(0x69, data->sbase + WBCIR_REG_SP3_IRTXMC);


 if (invert)
  outb(0x10, data->sbase + WBCIR_REG_SP3_IRCFG4);
 else
  outb(0x00, data->sbase + WBCIR_REG_SP3_IRCFG4);


 wbcir_select_bank(data, WBCIR_BANK_0);
 outb(0x97, data->sbase + WBCIR_REG_SP3_FCR);


 outb(0xE0, data->sbase + WBCIR_REG_SP3_ASCR);


 data->irdata_active = 0;
 led_trigger_event(data->rxtrigger, LED_OFF);
 data->irdata_error = 0;
 data->ev.duration = 0;
 ir_raw_event_reset(data->dev);
 ir_raw_event_handle(data->dev);


 outb(WBCIR_IRQ_RX | WBCIR_IRQ_ERR, data->sbase + WBCIR_REG_SP3_IER);
}
