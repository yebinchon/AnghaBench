
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MV88F5281_DEV_ID ;
 int orion5x_pcie_id (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int is_5281(void)
{
 u32 dev;
 u32 rev;

 orion5x_pcie_id(&dev, &rev);

 return !!(dev == MV88F5281_DEV_ID);
}
