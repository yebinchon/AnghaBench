
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct parport {int irq; } ;
struct ax_drvdata {struct ax_drvdata* io; int base; } ;


 int free_irq (int ,struct parport*) ;
 int iounmap (int ) ;
 int kfree (struct ax_drvdata*) ;
 int parport_remove_port (struct parport*) ;
 struct parport* platform_get_drvdata (struct platform_device*) ;
 struct ax_drvdata* pp_to_drv (struct parport*) ;
 int release_resource (struct ax_drvdata*) ;

__attribute__((used)) static int parport_ax88796_remove(struct platform_device *pdev)
{
 struct parport *p = platform_get_drvdata(pdev);
 struct ax_drvdata *dd = pp_to_drv(p);

 free_irq(p->irq, p);
 parport_remove_port(p);
 iounmap(dd->base);
 release_resource(dd->io);
 kfree(dd->io);
 kfree(dd);

 return 0;
}
