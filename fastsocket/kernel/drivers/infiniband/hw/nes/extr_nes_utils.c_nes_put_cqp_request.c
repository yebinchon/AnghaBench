
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_device {int dummy; } ;
struct nes_cqp_request {int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int nes_free_cqp_request (struct nes_device*,struct nes_cqp_request*) ;

void nes_put_cqp_request(struct nes_device *nesdev,
    struct nes_cqp_request *cqp_request)
{
 if (atomic_dec_and_test(&cqp_request->refcount))
  nes_free_cqp_request(nesdev, cqp_request);
}
