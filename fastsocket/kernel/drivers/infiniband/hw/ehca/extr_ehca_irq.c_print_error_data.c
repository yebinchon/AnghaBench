
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int name; } ;
struct ehca_shca {TYPE_2__ ib_device; } ;
struct TYPE_3__ {int qp_num; } ;
struct ehca_qp {TYPE_1__ ib_qp; } ;
struct ehca_cq {int cq_number; } ;


 int EHCA_BMASK_GET (int ,int) ;
 int ERROR_DATA_TYPE ;
 int ehca_dmp (int*,int,char*,int) ;
 int ehca_err (TYPE_2__*,char*,...) ;

__attribute__((used)) static void print_error_data(struct ehca_shca *shca, void *data,
        u64 *rblock, int length)
{
 u64 type = EHCA_BMASK_GET(ERROR_DATA_TYPE, rblock[2]);
 u64 resource = rblock[1];

 switch (type) {
 case 0x1:
 {
  struct ehca_qp *qp = (struct ehca_qp *)data;


  if (rblock[6] == 0)
   return;

  ehca_err(&shca->ib_device,
    "QP 0x%x (resource=%llx) has errors.",
    qp->ib_qp.qp_num, resource);
  break;
 }
 case 0x4:
 {
  struct ehca_cq *cq = (struct ehca_cq *)data;

  ehca_err(&shca->ib_device,
    "CQ 0x%x (resource=%llx) has errors.",
    cq->cq_number, resource);
  break;
 }
 default:
  ehca_err(&shca->ib_device,
    "Unknown error type: %llx on %s.",
    type, shca->ib_device.name);
  break;
 }

 ehca_err(&shca->ib_device, "Error data is available: %llx.", resource);
 ehca_err(&shca->ib_device, "EHCA ----- error data begin "
   "---------------------------------------------------");
 ehca_dmp(rblock, length, "resource=%llx", resource);
 ehca_err(&shca->ib_device, "EHCA ----- error data end "
   "----------------------------------------------------");

 return;
}
