
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_driver_data {TYPE_1__* vma; } ;
struct TYPE_2__ {int mcr; } ;


 unsigned int readl (int *) ;

__attribute__((used)) static int nic_wait(struct ioc3_driver_data *idd)
{
 unsigned mcr;

        do {
                mcr = readl(&idd->vma->mcr);
        } while (!(mcr & 2));

        return mcr & 1;
}
