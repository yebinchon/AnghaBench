
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ahd_softc {int dummy; } ;
typedef int dma_addr_t ;
typedef void* bus_size_t ;
typedef TYPE_1__* bus_dma_tag_t ;
typedef int bus_dma_filter_t ;
struct TYPE_5__ {void* maxsize; void* boundary; void* alignment; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 TYPE_1__* malloc (int,int ,int ) ;

int
ahd_dma_tag_create(struct ahd_softc *ahd, bus_dma_tag_t parent,
     bus_size_t alignment, bus_size_t boundary,
     dma_addr_t lowaddr, dma_addr_t highaddr,
     bus_dma_filter_t *filter, void *filterarg,
     bus_size_t maxsize, int nsegments,
     bus_size_t maxsegsz, int flags, bus_dma_tag_t *ret_tag)
{
 bus_dma_tag_t dmat;

 dmat = malloc(sizeof(*dmat), M_DEVBUF, M_NOWAIT);
 if (dmat == ((void*)0))
  return (ENOMEM);
 dmat->alignment = alignment;
 dmat->boundary = boundary;
 dmat->maxsize = maxsize;
 *ret_tag = dmat;
 return (0);
}
