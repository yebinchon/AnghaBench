
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct efx_vf {int busy; unsigned int req_type; unsigned int req_seqno; int req_addr; int pci_name; int req; } ;
struct efx_nic {int net_dev; } ;
struct efx_channel {struct efx_nic* efx; } ;
typedef int efx_qword_t ;


 int BUILD_BUG_ON (int) ;
 unsigned int EFX_QWORD_FIELD (int ,int ) ;
 scalar_t__ FSF_CZ_USER_EV_REG_VALUE_LBN ;
 int FSF_CZ_USER_QID ;
 int VFDI_EV_DATA ;
 int VFDI_EV_SEQ ;
 int VFDI_EV_TYPE ;




 int hw ;
 scalar_t__ map_vi_index (struct efx_nic*,unsigned int,struct efx_vf**,int *) ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

void efx_sriov_event(struct efx_channel *channel, efx_qword_t *event)
{
 struct efx_nic *efx = channel->efx;
 struct efx_vf *vf;
 unsigned qid, seq, type, data;

 qid = EFX_QWORD_FIELD(*event, FSF_CZ_USER_QID);


 BUILD_BUG_ON(FSF_CZ_USER_EV_REG_VALUE_LBN != 0);
 seq = EFX_QWORD_FIELD(*event, VFDI_EV_SEQ);
 type = EFX_QWORD_FIELD(*event, VFDI_EV_TYPE);
 data = EFX_QWORD_FIELD(*event, VFDI_EV_DATA);

 netif_vdbg(efx, hw, efx->net_dev,
     "USR_EV event from qid %d seq 0x%x type %d data 0x%x\n",
     qid, seq, type, data);

 if (map_vi_index(efx, qid, &vf, ((void*)0)))
  return;
 if (vf->busy)
  goto error;

 if (type == 131) {

  vf->req_type = 131;
  vf->req_seqno = seq + 1;
  vf->req_addr = 0;
 } else if (seq != (vf->req_seqno++ & 0xff) || type != vf->req_type)
  goto error;

 switch (vf->req_type) {
 case 131:
 case 130:
 case 129:
  vf->req_addr |= (u64)data << (vf->req_type << 4);
  ++vf->req_type;
  return;

 case 128:
  vf->req_addr |= (u64)data << 48;
  vf->req_type = 131;
  vf->busy = 1;
  queue_work(vfdi_workqueue, &vf->req);
  return;
 }

error:
 if (net_ratelimit())
  netif_err(efx, hw, efx->net_dev,
     "ERROR: Screaming VFDI request from %s\n",
     vf->pci_name);

 vf->req_type = 131;
 vf->req_seqno = seq + 1;
}
