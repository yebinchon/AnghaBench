
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct xps2data {scalar_t__ base_address; int irq; TYPE_2__ serio; } ;
struct serio {struct xps2data* port_data; } ;


 int DRIVER_NAME ;
 int XPS2_GIER_GIE_MASK ;
 scalar_t__ XPS2_GIER_OFFSET ;
 scalar_t__ XPS2_IPIER_OFFSET ;
 int XPS2_IPIXR_RX_ALL ;
 int dev_err (int ,char*,int ) ;
 int out_be32 (scalar_t__,int ) ;
 int request_irq (int ,int *,int ,int ,struct xps2data*) ;
 int xps2_interrupt ;
 int xps2_recv (struct xps2data*,int *) ;

__attribute__((used)) static int sxps2_open(struct serio *pserio)
{
 struct xps2data *drvdata = pserio->port_data;
 int error;
 u8 c;

 error = request_irq(drvdata->irq, &xps2_interrupt, 0,
    DRIVER_NAME, drvdata);
 if (error) {
  dev_err(drvdata->serio.dev.parent,
   "Couldn't allocate interrupt %d\n", drvdata->irq);
  return error;
 }


 out_be32(drvdata->base_address + XPS2_GIER_OFFSET, XPS2_GIER_GIE_MASK);
 out_be32(drvdata->base_address + XPS2_IPIER_OFFSET, XPS2_IPIXR_RX_ALL);
 (void)xps2_recv(drvdata, &c);

 return 0;
}
