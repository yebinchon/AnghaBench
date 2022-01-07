
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_iop3xx_data {scalar_t__ ioaddr; } ;


 scalar_t__ CR_OFFSET ;
 unsigned long IOP3XX_ICR_MSTART ;
 unsigned long IOP3XX_ICR_MSTOP ;
 unsigned long IOP3XX_ICR_SCLEN ;
 unsigned long IOP3XX_ICR_TBYTE ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void
iop3xx_i2c_transaction_cleanup(struct i2c_algo_iop3xx_data *iop3xx_adap)
{
 unsigned long cr = __raw_readl(iop3xx_adap->ioaddr + CR_OFFSET);

 cr &= ~(IOP3XX_ICR_MSTART | IOP3XX_ICR_TBYTE |
  IOP3XX_ICR_MSTOP | IOP3XX_ICR_SCLEN);

 __raw_writel(cr, iop3xx_adap->ioaddr + CR_OFFSET);
}
