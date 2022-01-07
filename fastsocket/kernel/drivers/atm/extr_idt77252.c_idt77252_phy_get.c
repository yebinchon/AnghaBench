
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dev_data; } ;


 unsigned char read_utility (int ,int) ;

__attribute__((used)) static unsigned char
idt77252_phy_get(struct atm_dev *dev, unsigned long addr)
{
 return read_utility(dev->dev_data, 0x100 + (addr & 0x1ff));
}
