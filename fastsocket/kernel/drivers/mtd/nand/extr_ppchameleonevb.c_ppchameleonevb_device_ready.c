
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 scalar_t__ GPIO0_IR ;
 int NAND_EVB_RB_GPIO_PIN ;
 int in_be32 (unsigned int volatile*) ;

__attribute__((used)) static int ppchameleonevb_device_ready(struct mtd_info *minfo)
{
 if (in_be32((volatile unsigned *)GPIO0_IR) & NAND_EVB_RB_GPIO_PIN)
  return 1;
 return 0;
}
