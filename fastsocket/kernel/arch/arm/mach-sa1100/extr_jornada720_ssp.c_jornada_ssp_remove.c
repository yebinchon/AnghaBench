
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GPIO_GPIO25 ;
 int GPSR ;
 int ssp_exit () ;

__attribute__((used)) static int jornada_ssp_remove(struct platform_device *dev)
{


 GPSR = GPIO_GPIO25;
 ssp_exit();
 return 0;
}
