
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superio_struct {int dma; } ;
struct parport {int dummy; } ;


 int PARPORT_DMA_NONE ;
 struct superio_struct* find_superio (struct parport*) ;

__attribute__((used)) static int get_superio_dma(struct parport *p)
{
 struct superio_struct *s = find_superio(p);
 if (s)
  return s->dma;
 return PARPORT_DMA_NONE;
}
