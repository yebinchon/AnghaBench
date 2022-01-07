
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * page_addr; } ;
struct intel_ring_buffer {TYPE_1__ status_page; } ;



__attribute__((used)) static inline void
intel_write_status_page(struct intel_ring_buffer *ring,
   int reg, u32 value)
{
 ring->status_page.page_addr[reg] = value;
}
