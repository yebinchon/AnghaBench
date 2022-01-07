
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int irq_queue; int name; int (* get_seqno ) (struct intel_ring_buffer*,int) ;int request_list; } ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ i915_seqno_passed (int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int ring_last_seqno (struct intel_ring_buffer*) ;
 int stub1 (struct intel_ring_buffer*,int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static bool i915_hangcheck_ring_idle(struct intel_ring_buffer *ring, bool *err)
{
 if (list_empty(&ring->request_list) ||
     i915_seqno_passed(ring->get_seqno(ring, 0),
         ring_last_seqno(ring))) {

  if (waitqueue_active(&ring->irq_queue)) {
   DRM_ERROR("Hangcheck timer elapsed... %s idle\n",
      ring->name);
   wake_up_all(&ring->irq_queue);
   *err = 1;
  }
  return 1;
 }
 return 0;
}
