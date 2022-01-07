
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int cx231xx_check_fw (struct cx231xx*) ;

int is_fw_load(struct cx231xx *dev)
{
 return cx231xx_check_fw(dev);
}
