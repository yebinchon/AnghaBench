
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_queue_req {int dummy; } ;
struct zfcp_qdio {int req_q_full; } ;
struct qdio_buffer_element {unsigned long length; void* addr; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int atomic_inc (int *) ;
 unsigned long min (unsigned long,int) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_next (struct zfcp_qdio*,struct zfcp_queue_req*,unsigned int) ;
 int zfcp_qdio_undo_sbals (struct zfcp_qdio*,struct zfcp_queue_req*) ;

__attribute__((used)) static int zfcp_qdio_fill_sbals(struct zfcp_qdio *qdio,
    struct zfcp_queue_req *q_req,
    unsigned int sbtype, void *start_addr,
    unsigned int total_length)
{
 struct qdio_buffer_element *sbale;
 unsigned long remaining, length;
 void *addr;


 for (addr = start_addr, remaining = total_length; remaining > 0;
      addr += length, remaining -= length) {
  sbale = zfcp_qdio_sbale_next(qdio, q_req, sbtype);
  if (!sbale) {
   atomic_inc(&qdio->req_q_full);
   zfcp_qdio_undo_sbals(qdio, q_req);
   return -EINVAL;
  }


  length = min(remaining,
        (PAGE_SIZE - ((unsigned long)addr &
        (PAGE_SIZE - 1))));
  sbale->addr = addr;
  sbale->length = length;
 }
 return 0;
}
