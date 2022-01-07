
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbcir_data {scalar_t__ ebase; scalar_t__ wbase; } ;


 scalar_t__ WBCIR_REG_ECEIR_CCTL ;
 scalar_t__ WBCIR_REG_ECEIR_CTS ;
 scalar_t__ WBCIR_REG_WCEIR_CFG1 ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 scalar_t__ WBCIR_REG_WCEIR_STS ;
 scalar_t__ invert ;
 int outb (int,scalar_t__) ;
 int protocol ;
 int wbcir_set_bits (scalar_t__,int,int) ;

__attribute__((used)) static void
wbcir_cfg_ceir(struct wbcir_data *data)
{
 u8 tmp;


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
}
