
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_prog_region {scalar_t__ bus_addr; scalar_t__ n_pages; int * dev; int * kvirt; } ;



void dma_prog_region_init(struct dma_prog_region *prog)
{
 prog->kvirt = ((void*)0);
 prog->dev = ((void*)0);
 prog->n_pages = 0;
 prog->bus_addr = 0;
}
