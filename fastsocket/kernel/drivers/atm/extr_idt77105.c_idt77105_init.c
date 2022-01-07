
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int * phy; } ;


 int idt77105_ops ;

int idt77105_init(struct atm_dev *dev)
{
 dev->phy = &idt77105_ops;
 return 0;
}
