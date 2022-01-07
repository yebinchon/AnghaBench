
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_region {int * sglist; scalar_t__ n_dma_pages; scalar_t__ n_pages; int * dev; int * kvirt; } ;



void dma_region_init(struct dma_region *dma)
{
 dma->kvirt = ((void*)0);
 dma->dev = ((void*)0);
 dma->n_pages = 0;
 dma->n_dma_pages = 0;
 dma->sglist = ((void*)0);
}
