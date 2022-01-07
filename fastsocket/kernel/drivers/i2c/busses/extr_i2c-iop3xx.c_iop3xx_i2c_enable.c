
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_algo_iop3xx_data {scalar_t__ id; int SR_enabled; scalar_t__ ioaddr; } ;


 scalar_t__ CR_OFFSET ;
 int GPIO_LOW ;
 int IOP3XX_GPIO_LINE (int) ;
 int IOP3XX_ICR_ALD_IE ;
 int IOP3XX_ICR_BERR_IE ;
 int IOP3XX_ICR_GCD ;
 int IOP3XX_ICR_RXFULL_IE ;
 int IOP3XX_ICR_SCLEN ;
 int IOP3XX_ICR_TXEMPTY_IE ;
 int IOP3XX_ICR_UE ;
 int IOP3XX_ISR_ALD ;
 int IOP3XX_ISR_BERRD ;
 int IOP3XX_ISR_RXFULL ;
 int IOP3XX_ISR_TXEMPTY ;
 int __raw_writel (int,scalar_t__) ;
 int gpio_line_set (int ,int ) ;

__attribute__((used)) static void
iop3xx_i2c_enable(struct i2c_algo_iop3xx_data *iop3xx_adap)
{
 u32 cr = IOP3XX_ICR_GCD | IOP3XX_ICR_SCLEN | IOP3XX_ICR_UE;
 iop3xx_adap->SR_enabled =
  IOP3XX_ISR_ALD | IOP3XX_ISR_BERRD |
  IOP3XX_ISR_RXFULL | IOP3XX_ISR_TXEMPTY;

 cr |= IOP3XX_ICR_ALD_IE | IOP3XX_ICR_BERR_IE |
  IOP3XX_ICR_RXFULL_IE | IOP3XX_ICR_TXEMPTY_IE;

 __raw_writel(cr, iop3xx_adap->ioaddr + CR_OFFSET);
}
