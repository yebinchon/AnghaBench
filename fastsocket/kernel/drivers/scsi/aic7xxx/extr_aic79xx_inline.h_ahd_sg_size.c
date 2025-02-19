
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int dummy; } ;
struct ahd_dma64_seg {int dummy; } ;


 int AHD_64BIT_ADDRESSING ;

__attribute__((used)) static inline size_t ahd_sg_size(struct ahd_softc *ahd)
{
 if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0)
  return (sizeof(struct ahd_dma64_seg));
 return (sizeof(struct ahd_dma_seg));
}
