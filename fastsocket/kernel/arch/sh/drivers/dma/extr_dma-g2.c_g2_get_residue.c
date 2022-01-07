
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int chan; } ;


 int g2_bytes_remaining (int ) ;

__attribute__((used)) static int g2_get_residue(struct dma_channel *chan)
{
 return g2_bytes_remaining(chan->chan);
}
