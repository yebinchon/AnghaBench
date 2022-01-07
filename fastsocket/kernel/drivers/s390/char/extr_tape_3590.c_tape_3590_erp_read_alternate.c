
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int cdev_id; struct tape_3590_disc_data* discdata; } ;
struct tape_3590_disc_data {scalar_t__ read_back_op; } ;
struct irb {int dummy; } ;


 int DBF_EVENT (int,char*,int ) ;
 scalar_t__ READ_BACKWARD ;
 scalar_t__ READ_PREVIOUS ;
 int tape_3590_erp_retry (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_read_opposite (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int
tape_3590_erp_read_alternate(struct tape_device *device,
        struct tape_request *request, struct irb *irb)
{
 struct tape_3590_disc_data *data;
 data = device->discdata;
 if (data->read_back_op == READ_PREVIOUS) {
  DBF_EVENT(2, "(%08x): No support for READ_PREVIOUS command\n",
     device->cdev_id);
  data->read_back_op = READ_BACKWARD;
 } else {
  DBF_EVENT(2, "(%08x): No support for READ_BACKWARD command\n",
     device->cdev_id);
  data->read_back_op = READ_PREVIOUS;
 }
 tape_3590_read_opposite(device, request);
 return tape_3590_erp_retry(device, request, irb);
}
