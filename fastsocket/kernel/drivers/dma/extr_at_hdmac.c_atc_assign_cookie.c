
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cookie; } ;
struct at_dma_chan {TYPE_1__ chan_common; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct at_desc {TYPE_2__ txd; } ;
typedef scalar_t__ dma_cookie_t ;



__attribute__((used)) static dma_cookie_t
atc_assign_cookie(struct at_dma_chan *atchan, struct at_desc *desc)
{
 dma_cookie_t cookie = atchan->chan_common.cookie;

 if (++cookie < 0)
  cookie = 1;

 atchan->chan_common.cookie = cookie;
 desc->txd.cookie = cookie;

 return cookie;
}
