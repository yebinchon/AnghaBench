
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int pef; } ;


 int RIO_PEF_SWITCH ;

__attribute__((used)) static int rio_is_switch(struct rio_dev *rdev)
{
 if (rdev->pef & RIO_PEF_SWITCH)
  return 1;
 return 0;
}
