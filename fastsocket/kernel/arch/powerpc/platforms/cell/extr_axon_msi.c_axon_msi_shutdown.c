
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct of_device {int dev; } ;
struct axon_msic {int dcr_host; TYPE_2__* irq_host; } ;
struct TYPE_4__ {TYPE_1__* of_node; } ;
struct TYPE_3__ {int full_name; } ;


 int MSIC_CTRL_ENABLE ;
 int MSIC_CTRL_IRQ_ENABLE ;
 int MSIC_CTRL_REG ;
 int dcr_read (int ,int ) ;
 struct axon_msic* dev_get_drvdata (int *) ;
 int msic_dcr_write (struct axon_msic*,int ,int) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static int axon_msi_shutdown(struct of_device *device)
{
 struct axon_msic *msic = dev_get_drvdata(&device->dev);
 u32 tmp;

 pr_devel("axon_msi: disabling %s\n",
    msic->irq_host->of_node->full_name);
 tmp = dcr_read(msic->dcr_host, MSIC_CTRL_REG);
 tmp &= ~MSIC_CTRL_ENABLE & ~MSIC_CTRL_IRQ_ENABLE;
 msic_dcr_write(msic, MSIC_CTRL_REG, tmp);

 return 0;
}
