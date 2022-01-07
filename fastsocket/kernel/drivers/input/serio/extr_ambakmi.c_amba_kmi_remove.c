
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_kmi_port {int base; int clk; int io; } ;
struct amba_device {int dummy; } ;


 struct amba_kmi_port* amba_get_drvdata (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int amba_set_drvdata (struct amba_device*,int *) ;
 int clk_put (int ) ;
 int iounmap (int ) ;
 int kfree (struct amba_kmi_port*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int amba_kmi_remove(struct amba_device *dev)
{
 struct amba_kmi_port *kmi = amba_get_drvdata(dev);

 amba_set_drvdata(dev, ((void*)0));

 serio_unregister_port(kmi->io);
 clk_put(kmi->clk);
 iounmap(kmi->base);
 kfree(kmi);
 amba_release_regions(dev);
 return 0;
}
