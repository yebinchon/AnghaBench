
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; int start; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct parport {struct ax_drvdata* private_data; } ;
struct ax_drvdata {int irq_enabled; struct ax_drvdata* io; int * base; int * spp_cpr; int * spp_spr; int * spp_data; struct device* dev; struct parport* parport; } ;


 int AX_CPR_STRB ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_FALLING ;
 int PARPORT_DMA_NONE ;
 int PARPORT_IRQ_NONE ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int * ioremap (int,unsigned long) ;
 int iounmap (int *) ;
 int kfree (struct ax_drvdata*) ;
 struct ax_drvdata* kzalloc (int,int ) ;
 int parport_announce_port (struct parport*) ;
 int parport_ax88796_ops ;
 int parport_irq_handler ;
 struct parport* parport_register_port (unsigned long,int,int ,int *) ;
 int parport_remove_port (struct parport*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct parport*) ;
 int release_resource (struct ax_drvdata*) ;
 int request_irq (int,int ,int ,int ,struct parport*) ;
 struct ax_drvdata* request_mem_region (int,unsigned long,int ) ;
 int writeb (int ,int *) ;

__attribute__((used)) static int parport_ax88796_probe(struct platform_device *pdev)
{
 struct device *_dev = &pdev->dev;
 struct ax_drvdata *dd;
 struct parport *pp = ((void*)0);
 struct resource *res;
 unsigned long size;
 int spacing;
 int irq;
 int ret;

 dd = kzalloc(sizeof(struct ax_drvdata), GFP_KERNEL);
 if (dd == ((void*)0)) {
  dev_err(_dev, "no memory for private data\n");
  return -ENOMEM;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(_dev, "no MEM specified\n");
  ret = -ENXIO;
  goto exit_mem;
 }

 size = (res->end - res->start) + 1;
 spacing = size / 3;

 dd->io = request_mem_region(res->start, size, pdev->name);
 if (dd->io == ((void*)0)) {
  dev_err(_dev, "cannot reserve memory\n");
  ret = -ENXIO;
  goto exit_mem;
 }

 dd->base = ioremap(res->start, size);
 if (dd->base == ((void*)0)) {
  dev_err(_dev, "cannot ioremap region\n");
  ret = -ENXIO;
  goto exit_res;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  irq = PARPORT_IRQ_NONE;

 pp = parport_register_port((unsigned long)dd->base, irq,
       PARPORT_DMA_NONE,
       &parport_ax88796_ops);

 if (pp == ((void*)0)) {
  dev_err(_dev, "failed to register parallel port\n");
  ret = -ENOMEM;
  goto exit_unmap;
 }

 pp->private_data = dd;
 dd->parport = pp;
 dd->dev = _dev;

 dd->spp_data = dd->base;
 dd->spp_spr = dd->base + (spacing * 1);
 dd->spp_cpr = dd->base + (spacing * 2);


 writeb(AX_CPR_STRB, dd->spp_cpr);

 if (irq >= 0) {

  ret = request_irq(irq, parport_irq_handler,
      IRQF_TRIGGER_FALLING, pdev->name, pp);

  if (ret < 0)
   goto exit_port;

  dd->irq_enabled = 1;
 }

 platform_set_drvdata(pdev, pp);

 dev_info(_dev, "attached parallel port driver\n");
 parport_announce_port(pp);

 return 0;

 exit_port:
 parport_remove_port(pp);
 exit_unmap:
 iounmap(dd->base);
 exit_res:
 release_resource(dd->io);
 kfree(dd->io);
 exit_mem:
 kfree(dd);
 return ret;
}
