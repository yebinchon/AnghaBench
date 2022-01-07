
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int op; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;


 int EIO ;


 int tape_3590_erp_failed (struct tape_device*,struct tape_request*,struct irb*,int ) ;
 int tape_3590_erp_retry (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_read_opposite (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
tape_3590_erp_read_opposite(struct tape_device *device,
       struct tape_request *request, struct irb *irb)
{
 switch (request->op) {
 case 128:




  tape_3590_read_opposite(device, request);
  return tape_3590_erp_retry(device, request, irb);
 case 129:

  return tape_3590_erp_failed(device, request, irb, -EIO);
  break;
 default:
  return tape_3590_erp_failed(device, request, irb, -EIO);
 }
}
