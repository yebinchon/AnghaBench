
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cookie; } ;
struct txx9dmac_desc {TYPE_2__ txd; } ;
struct TYPE_3__ {scalar_t__ cookie; } ;
struct txx9dmac_chan {TYPE_1__ chan; } ;
typedef scalar_t__ dma_cookie_t ;



__attribute__((used)) static dma_cookie_t
txx9dmac_assign_cookie(struct txx9dmac_chan *dc, struct txx9dmac_desc *desc)
{
 dma_cookie_t cookie = dc->chan.cookie;

 if (++cookie < 0)
  cookie = 1;

 dc->chan.cookie = cookie;
 desc->txd.cookie = cookie;

 return cookie;
}
