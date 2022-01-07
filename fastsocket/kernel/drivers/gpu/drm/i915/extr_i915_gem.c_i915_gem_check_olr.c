
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_ring_buffer {scalar_t__ outstanding_lazy_request; TYPE_1__* dev; } ;
struct TYPE_2__ {int struct_mutex; } ;


 int BUG_ON (int) ;
 int i915_add_request (struct intel_ring_buffer*,int *,int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static int
i915_gem_check_olr(struct intel_ring_buffer *ring, u32 seqno)
{
 int ret;

 BUG_ON(!mutex_is_locked(&ring->dev->struct_mutex));

 ret = 0;
 if (seqno == ring->outstanding_lazy_request)
  ret = i915_add_request(ring, ((void*)0), ((void*)0));

 return ret;
}
