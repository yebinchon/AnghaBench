
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
typedef int pm_message_t ;


 int wbcir_shutdown (struct pnp_dev*) ;

__attribute__((used)) static int
wbcir_suspend(struct pnp_dev *device, pm_message_t state)
{
 wbcir_shutdown(device);
 return 0;
}
