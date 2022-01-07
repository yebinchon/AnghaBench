
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;


 int EIO ;
 int tape_3590_erp_basic (struct tape_device*,struct tape_request*,struct irb*,int ) ;

__attribute__((used)) static int
tape_3590_erp_read_buf_log(struct tape_device *device,
      struct tape_request *request, struct irb *irb)
{




 return tape_3590_erp_basic(device, request, irb, -EIO);
}
