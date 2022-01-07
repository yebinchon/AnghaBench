
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {size_t op; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;


 int DBF_EVENT (int,char*,int ) ;
 int tape_dump_sense_dbf (struct tape_device*,struct tape_request*,struct irb*) ;
 int * tape_op_verbose ;

__attribute__((used)) static inline int
tape_3590_erp_failed(struct tape_device *device, struct tape_request *request,
       struct irb *irb, int rc)
{
 DBF_EVENT(3, "Error Recovery failed for %s\n",
    tape_op_verbose[request->op]);
 tape_dump_sense_dbf(device, request, irb);
 return rc;
}
