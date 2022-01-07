
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_enable_disable_vf {int enable; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_ENABLE_DISABLE_VF ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_enable_disable_vf* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_enable_vf(struct be_adapter *adapter, u8 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_enable_disable_vf *req;
 int status;

 if (BEx_chip(adapter))
  return 0;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_ENABLE_DISABLE_VF, sizeof(*req),
          wrb, ((void*)0));

 req->hdr.domain = domain;
 req->enable = 1;
 status = be_mcc_notify_wait(adapter);
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
