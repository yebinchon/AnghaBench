
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ sbase; scalar_t__ wbase; } ;
struct pnp_dev {int dummy; } ;


 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_RX ;
 scalar_t__ WBCIR_REG_SP3_IER ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 int outb (int,scalar_t__) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int wbcir_reset_irdata (struct wbcir_data*) ;
 int wbcir_set_bits (scalar_t__,int,int) ;

__attribute__((used)) static int
wbcir_resume(struct pnp_dev *device)
{
 struct wbcir_data *data = pnp_get_drvdata(device);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL, 0x00, 0x01);


 wbcir_reset_irdata(data);
 outb(WBCIR_IRQ_RX | WBCIR_IRQ_ERR, data->sbase + WBCIR_REG_SP3_IER);

 return 0;
}
