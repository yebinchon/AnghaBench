
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_bus {struct sdio_func* host_sdio; } ;
struct sdio_func {int dummy; } ;
struct b43_wldev {TYPE_2__* dev; } ;
struct b43_sdio {void (* irq_handler ) (struct b43_wldev*) ;struct b43_wldev* irq_handler_opaque; } ;
struct TYPE_4__ {TYPE_1__* sdev; } ;
struct TYPE_3__ {struct ssb_bus* bus; } ;


 int b43_sdio_interrupt_dispatcher ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 struct b43_sdio* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;

int b43_sdio_request_irq(struct b43_wldev *dev,
    void (*handler)(struct b43_wldev *dev))
{
 struct ssb_bus *bus = dev->dev->sdev->bus;
 struct sdio_func *func = bus->host_sdio;
 struct b43_sdio *sdio = sdio_get_drvdata(func);
 int err;

 sdio->irq_handler_opaque = dev;
 sdio->irq_handler = handler;
 sdio_claim_host(func);
 err = sdio_claim_irq(func, b43_sdio_interrupt_dispatcher);
 sdio_release_host(func);

 return err;
}
