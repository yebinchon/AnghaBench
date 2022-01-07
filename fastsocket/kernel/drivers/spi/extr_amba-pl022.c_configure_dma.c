
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl022 {TYPE_1__* adev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOTSUPP ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int configure_dma(void *data)
{
 struct pl022 *pl022 = data;
 dev_dbg(&pl022->adev->dev, "configure DMA\n");
 return -ENOTSUPP;
}
