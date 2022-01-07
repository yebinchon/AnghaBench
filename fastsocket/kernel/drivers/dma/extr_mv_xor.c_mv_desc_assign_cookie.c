
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cookie; } ;
struct mv_xor_desc_slot {TYPE_2__ async_tx; } ;
struct TYPE_3__ {scalar_t__ cookie; } ;
struct mv_xor_chan {TYPE_1__ common; } ;
typedef scalar_t__ dma_cookie_t ;



__attribute__((used)) static dma_cookie_t
mv_desc_assign_cookie(struct mv_xor_chan *mv_chan,
        struct mv_xor_desc_slot *desc)
{
 dma_cookie_t cookie = mv_chan->common.cookie;

 if (++cookie < 0)
  cookie = 1;
 mv_chan->common.cookie = desc->async_tx.cookie = cookie;
 return cookie;
}
