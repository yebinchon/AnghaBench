
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_device {int dummy; } ;


 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void qib_dma_free_coherent(struct ib_device *dev, size_t size,
      void *cpu_addr, u64 dma_handle)
{
 free_pages((unsigned long) cpu_addr, get_order(size));
}
