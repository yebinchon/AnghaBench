
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int ipz_eq_handle; } ;
struct ehca_shca {int ib_device; TYPE_1__ neq; int ipz_hca_handle; } ;
struct ehca_eqe {int entry; } ;


 int EHCA_BMASK_GET (int ,int ) ;
 scalar_t__ H_SUCCESS ;
 int NEQE_COMPLETION_EVENT ;
 int ehca_err (int *,char*) ;
 struct ehca_eqe* ehca_poll_eq (struct ehca_shca*,TYPE_1__*) ;
 scalar_t__ hipz_h_reset_event (int ,int ,int) ;
 int parse_ec (struct ehca_shca*,int ) ;

void ehca_tasklet_neq(unsigned long data)
{
 struct ehca_shca *shca = (struct ehca_shca*)data;
 struct ehca_eqe *eqe;
 u64 ret;

 eqe = ehca_poll_eq(shca, &shca->neq);

 while (eqe) {
  if (!EHCA_BMASK_GET(NEQE_COMPLETION_EVENT, eqe->entry))
   parse_ec(shca, eqe->entry);

  eqe = ehca_poll_eq(shca, &shca->neq);
 }

 ret = hipz_h_reset_event(shca->ipz_hca_handle,
     shca->neq.ipz_eq_handle, 0xFFFFFFFFFFFFFFFFL);

 if (ret != H_SUCCESS)
  ehca_err(&shca->ib_device, "Can't clear notification events.");

 return;
}
