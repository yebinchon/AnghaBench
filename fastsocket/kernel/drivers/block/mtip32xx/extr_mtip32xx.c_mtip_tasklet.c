
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int dummy; } ;


 int mtip_handle_irq (struct driver_data*) ;

__attribute__((used)) static void mtip_tasklet(unsigned long data)
{
 mtip_handle_irq((struct driver_data *) data);
}
