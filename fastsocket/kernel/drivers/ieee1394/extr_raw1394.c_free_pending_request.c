
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_request {int packet; struct pending_request* data; scalar_t__ free_data; struct pending_request* ibs; int data_size; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_sub (int ,int *) ;
 int hpsb_free_packet (int ) ;
 int iso_buffer_size ;
 int kfree (struct pending_request*) ;

__attribute__((used)) static void free_pending_request(struct pending_request *req)
{
 if (req->ibs) {
  if (atomic_dec_and_test(&req->ibs->refcount)) {
   atomic_sub(req->ibs->data_size, &iso_buffer_size);
   kfree(req->ibs);
  }
 } else if (req->free_data) {
  kfree(req->data);
 }
 hpsb_free_packet(req->packet);
 kfree(req);
}
