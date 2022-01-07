
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {scalar_t__ txnobuf; scalar_t__ rxnobuf; scalar_t__ rxgiants; } ;



void dma_counterreset(struct dma_pub *pub)
{

 pub->rxgiants = 0;
 pub->rxnobuf = 0;
 pub->txnobuf = 0;
}
