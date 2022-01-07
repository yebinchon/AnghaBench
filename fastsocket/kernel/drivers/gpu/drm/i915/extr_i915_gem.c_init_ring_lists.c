
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int request_list; int active_list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void
init_ring_lists(struct intel_ring_buffer *ring)
{
 INIT_LIST_HEAD(&ring->active_list);
 INIT_LIST_HEAD(&ring->request_list);
}
