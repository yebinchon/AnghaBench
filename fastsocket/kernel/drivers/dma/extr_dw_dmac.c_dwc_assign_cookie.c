
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cookie; } ;
struct dw_dma_chan {TYPE_1__ chan; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct dw_desc {TYPE_2__ txd; } ;
typedef scalar_t__ dma_cookie_t ;



__attribute__((used)) static dma_cookie_t
dwc_assign_cookie(struct dw_dma_chan *dwc, struct dw_desc *desc)
{
 dma_cookie_t cookie = dwc->chan.cookie;

 if (++cookie < 0)
  cookie = 1;

 dwc->chan.cookie = cookie;
 desc->txd.cookie = cookie;

 return cookie;
}
