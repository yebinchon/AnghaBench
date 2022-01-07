
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_host {int num_targets; TYPE_1__* disc_buf; } ;
struct TYPE_2__ {int* scsi_id; } ;


 int IBMVFC_DISC_TGT_SCSI_ID_MASK ;
 int ibmvfc_alloc_target (struct ibmvfc_host*,int) ;

__attribute__((used)) static int ibmvfc_alloc_targets(struct ibmvfc_host *vhost)
{
 int i, rc;

 for (i = 0, rc = 0; !rc && i < vhost->num_targets; i++)
  rc = ibmvfc_alloc_target(vhost,
      vhost->disc_buf->scsi_id[i] & IBMVFC_DISC_TGT_SCSI_ID_MASK);

 return rc;
}
