
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kwqe {int dummy; } ;
struct TYPE_3__ {int flags; int op_code; } ;
struct fcoe_kwqe_destroy {TYPE_1__ hdr; } ;
struct bnx2fc_hba {TYPE_2__* cnic; } ;
struct TYPE_4__ {int (* submit_kwqes ) (TYPE_2__*,struct kwqe**,int) ;} ;


 int FCOE_KWQE_HEADER_LAYER_CODE_SHIFT ;
 int FCOE_KWQE_LAYER_CODE ;
 int FCOE_KWQE_OPCODE_DESTROY ;
 int memset (struct fcoe_kwqe_destroy*,int,int) ;
 int stub1 (TYPE_2__*,struct kwqe**,int) ;

int bnx2fc_send_fw_fcoe_destroy_msg(struct bnx2fc_hba *hba)
{
 struct fcoe_kwqe_destroy fcoe_destroy;
 struct kwqe *kwqe_arr[2];
 int num_kwqes = 1;
 int rc = -1;


 memset(&fcoe_destroy, 0x00, sizeof(struct fcoe_kwqe_destroy));
 fcoe_destroy.hdr.op_code = FCOE_KWQE_OPCODE_DESTROY;
 fcoe_destroy.hdr.flags = (FCOE_KWQE_LAYER_CODE <<
     FCOE_KWQE_HEADER_LAYER_CODE_SHIFT);
 kwqe_arr[0] = (struct kwqe *) &fcoe_destroy;

 if (hba->cnic && hba->cnic->submit_kwqes)
  rc = hba->cnic->submit_kwqes(hba->cnic, kwqe_arr, num_kwqes);
 return rc;
}
