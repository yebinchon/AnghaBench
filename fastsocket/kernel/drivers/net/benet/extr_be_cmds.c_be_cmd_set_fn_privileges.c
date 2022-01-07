
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_req_set_fn_privileges {void* privileges; void* privileges_lancer; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_SET_FN_PRIVILEGES ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int ) ;
 struct be_cmd_req_set_fn_privileges* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_fn_privileges(struct be_adapter *adapter, u32 privileges,
        u32 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_fn_privileges *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_FN_PRIVILEGES, sizeof(*req),
          wrb, ((void*)0));
 req->hdr.domain = domain;
 if (lancer_chip(adapter))
  req->privileges_lancer = cpu_to_le32(privileges);
 else
  req->privileges = cpu_to_le32(privileges);

 status = be_mcc_notify_wait(adapter);
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
