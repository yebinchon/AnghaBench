
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int own; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct dma_desc {TYPE_2__ des01; } ;



__attribute__((used)) static int mac100_get_rx_owner(struct dma_desc *p)
{
 return p->des01.rx.own;
}
