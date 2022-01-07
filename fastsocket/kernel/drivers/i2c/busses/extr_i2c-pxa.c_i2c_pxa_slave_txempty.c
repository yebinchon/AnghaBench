
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_i2c {int dummy; } ;


 int ICR_TB ;
 int ISR_BED ;
 int _ICR (struct pxa_i2c*) ;
 int _IDBR (struct pxa_i2c*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void i2c_pxa_slave_txempty(struct pxa_i2c *i2c, u32 isr)
{
 if (isr & ISR_BED) {

 } else {
  writel(0, _IDBR(i2c));
  writel(readl(_ICR(i2c)) | ICR_TB, _ICR(i2c));
 }
}
