
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct highlander_i2c_dev {scalar_t__ base; } ;


 scalar_t__ SMCR ;
 int SMCR_RST ;
 int highlander_i2c_wait_for_bbsy (struct highlander_i2c_dev*) ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static int highlander_i2c_reset(struct highlander_i2c_dev *dev)
{
 iowrite16(ioread16(dev->base + SMCR) | SMCR_RST, dev->base + SMCR);
 return highlander_i2c_wait_for_bbsy(dev);
}
