
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int dummy; } ;


 int ICR_SCLE ;
 int _ICR (struct pxa_i2c*) ;
 int readl (int ) ;

__attribute__((used)) static inline int i2c_pxa_is_slavemode(struct pxa_i2c *i2c)
{
 return !(readl(_ICR(i2c)) & ICR_SCLE);
}
