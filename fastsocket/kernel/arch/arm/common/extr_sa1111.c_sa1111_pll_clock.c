
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int dummy; } ;
struct sa1111 {int dummy; } ;


 unsigned int __sa1111_pll_clock (struct sa1111*) ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;

unsigned int sa1111_pll_clock(struct sa1111_dev *sadev)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);

 return __sa1111_pll_clock(sachip);
}
