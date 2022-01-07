
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_18__ {int type_code; int fbits; void* PortId; } ;
struct TYPE_30__ {void* port_id; } ;
struct TYPE_29__ {int symbname; int len; int wwnn; } ;
struct TYPE_28__ {int symbname; int len; void* PortId; } ;
struct TYPE_27__ {int wwnn; void* PortId; } ;
struct TYPE_26__ {int fcpReg; void* PortId; } ;
struct TYPE_25__ {void* PortId; } ;
struct TYPE_24__ {int Fc4Type; } ;
struct TYPE_19__ {TYPE_12__ rff; TYPE_9__ da_id; TYPE_8__ rsnn; TYPE_7__ rspn; TYPE_6__ rnn; TYPE_5__ rft; TYPE_4__ gff; TYPE_3__ gid; } ;
struct TYPE_16__ {void* CmdRsp; scalar_t__ Size; } ;
struct TYPE_17__ {TYPE_10__ bits; } ;
struct TYPE_22__ {scalar_t__ InId; int Revision; } ;
struct TYPE_23__ {TYPE_1__ bits; } ;
struct TYPE_21__ {scalar_t__ bdeSize; scalar_t__ bdeFlags; } ;
struct TYPE_20__ {void* w; TYPE_15__ f; } ;
struct ulp_bde64 {TYPE_13__ un; TYPE_11__ CommandResponse; int FsSubType; int FsType; TYPE_2__ RevisionId; TYPE_14__ tus; void* addrLow; void* addrHigh; } ;
struct lpfc_vport {int fc_myDID; int fc_rscn_id_cnt; int fc_flag; int ct_flags; int fc_nodename; int port_state; struct lpfc_hba* phba; } ;
struct lpfc_sli_ct_request {TYPE_13__ un; TYPE_11__ CommandResponse; int FsSubType; int FsType; TYPE_2__ RevisionId; TYPE_14__ tus; void* addrLow; void* addrHigh; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; void* virt; int list; } ;


 scalar_t__ DA_ID_REQUEST_SZ ;
 int FC4_FEATURE_INIT ;
 int FC_CT_RFF_ID ;
 int FC_CT_RFT_ID ;
 int FC_CT_RNN_ID ;
 int FC_CT_RSNN_NN ;
 int FC_CT_RSPN_ID ;
 int FC_MAX_NS_RSP ;
 int FC_TYPE_FCP ;
 scalar_t__ GFF_REQUEST_SZ ;
 int GFP_KERNEL ;
 scalar_t__ GID_REQUEST_SZ ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LPFC_DISC_TRC_CT ;
 int LPFC_NS_QRY ;
 int MEM_PRI ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 scalar_t__ NLP_STE_UNMAPPED_NODE ;
 int NameServer_DID ;
 scalar_t__ RFF_REQUEST_SZ ;
 scalar_t__ RFT_REQUEST_SZ ;
 scalar_t__ RNN_REQUEST_SZ ;
 scalar_t__ RSNN_REQUEST_SZ ;
 scalar_t__ RSPN_REQUEST_SZ ;
 int SLI_CTPT_FCP ;
 int SLI_CT_DIRECTORY_NAME_SERVER ;
 int SLI_CT_DIRECTORY_SERVICE ;
 int SLI_CT_REVISION ;
 void* be16_to_cpu (int const) ;
 void* cpu_to_be32 (int) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 void* le32_to_cpu (void*) ;
 void lpfc_cmpl_ct_cmd_da_id (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_gff_id (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_gid_ft (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_rff_id (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_rft_id (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_rnn_id (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_rsnn_nn (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 void lpfc_cmpl_ct_cmd_rspn_id (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 int lpfc_ct_cmd (struct lpfc_vport*,struct lpfc_dmabuf*,struct lpfc_dmabuf*,struct lpfc_nodelist*,void (*) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*),int,int ) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int,int ,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 void* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,void*,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,int,int ,...) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;
 int lpfc_vport_symbolic_node_name (struct lpfc_vport*,int ,size_t) ;
 int lpfc_vport_symbolic_port_name (struct lpfc_vport*,int ,size_t) ;
 int memcpy (int ,int *,int) ;
 int memset (struct ulp_bde64*,int ,int) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

int
lpfc_ns_cmd(struct lpfc_vport *vport, int cmdcode,
     uint8_t retry, uint32_t context)
{
 struct lpfc_nodelist * ndlp;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_dmabuf *mp, *bmp;
 struct lpfc_sli_ct_request *CtReq;
 struct ulp_bde64 *bpl;
 void (*cmpl) (struct lpfc_hba *, struct lpfc_iocbq *,
        struct lpfc_iocbq *) = ((void*)0);
 uint32_t rsp_size = 1024;
 size_t size;
 int rc = 0;

 ndlp = lpfc_findnode_did(vport, NameServer_DID);
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp)
     || ndlp->nlp_state != NLP_STE_UNMAPPED_NODE) {
  rc=1;
  goto ns_cmd_exit;
 }



 mp = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
 if (!mp) {
  rc=2;
  goto ns_cmd_exit;
 }

 INIT_LIST_HEAD(&mp->list);
 mp->virt = lpfc_mbuf_alloc(phba, MEM_PRI, &(mp->phys));
 if (!mp->virt) {
  rc=3;
  goto ns_cmd_free_mp;
 }


 bmp = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
 if (!bmp) {
  rc=4;
  goto ns_cmd_free_mpvirt;
 }

 INIT_LIST_HEAD(&bmp->list);
 bmp->virt = lpfc_mbuf_alloc(phba, MEM_PRI, &(bmp->phys));
 if (!bmp->virt) {
  rc=5;
  goto ns_cmd_free_bmp;
 }


 lpfc_printf_vlog(vport, KERN_INFO ,LOG_DISCOVERY,
    "0236 NameServer Req Data: x%x x%x x%x\n",
    cmdcode, vport->fc_flag, vport->fc_rscn_id_cnt);

 bpl = (struct ulp_bde64 *) bmp->virt;
 memset(bpl, 0, sizeof(struct ulp_bde64));
 bpl->addrHigh = le32_to_cpu(putPaddrHigh(mp->phys) );
 bpl->addrLow = le32_to_cpu(putPaddrLow(mp->phys) );
 bpl->tus.f.bdeFlags = 0;
 if (cmdcode == 133)
  bpl->tus.f.bdeSize = GID_REQUEST_SZ;
 else if (cmdcode == 134)
  bpl->tus.f.bdeSize = GFF_REQUEST_SZ;
 else if (cmdcode == 131)
  bpl->tus.f.bdeSize = RFT_REQUEST_SZ;
 else if (cmdcode == 130)
  bpl->tus.f.bdeSize = RNN_REQUEST_SZ;
 else if (cmdcode == 128)
  bpl->tus.f.bdeSize = RSPN_REQUEST_SZ;
 else if (cmdcode == 129)
  bpl->tus.f.bdeSize = RSNN_REQUEST_SZ;
 else if (cmdcode == 135)
  bpl->tus.f.bdeSize = DA_ID_REQUEST_SZ;
 else if (cmdcode == 132)
  bpl->tus.f.bdeSize = RFF_REQUEST_SZ;
 else
  bpl->tus.f.bdeSize = 0;
 bpl->tus.w = le32_to_cpu(bpl->tus.w);

 CtReq = (struct lpfc_sli_ct_request *) mp->virt;
 memset(CtReq, 0, sizeof (struct lpfc_sli_ct_request));
 CtReq->RevisionId.bits.Revision = SLI_CT_REVISION;
 CtReq->RevisionId.bits.InId = 0;
 CtReq->FsType = SLI_CT_DIRECTORY_SERVICE;
 CtReq->FsSubType = SLI_CT_DIRECTORY_NAME_SERVER;
 CtReq->CommandResponse.bits.Size = 0;
 switch (cmdcode) {
 case 133:
  CtReq->CommandResponse.bits.CmdRsp =
      be16_to_cpu(133);
  CtReq->un.gid.Fc4Type = SLI_CTPT_FCP;
  if (vport->port_state < LPFC_NS_QRY)
   vport->port_state = LPFC_NS_QRY;
  lpfc_set_disctmo(vport);
  cmpl = lpfc_cmpl_ct_cmd_gid_ft;
  rsp_size = FC_MAX_NS_RSP;
  break;

 case 134:
  CtReq->CommandResponse.bits.CmdRsp =
   be16_to_cpu(134);
  CtReq->un.gff.PortId = cpu_to_be32(context);
  cmpl = lpfc_cmpl_ct_cmd_gff_id;
  break;

 case 131:
  vport->ct_flags &= ~FC_CT_RFT_ID;
  CtReq->CommandResponse.bits.CmdRsp =
      be16_to_cpu(131);
  CtReq->un.rft.PortId = cpu_to_be32(vport->fc_myDID);
  CtReq->un.rft.fcpReg = 1;
  cmpl = lpfc_cmpl_ct_cmd_rft_id;
  break;

 case 130:
  vport->ct_flags &= ~FC_CT_RNN_ID;
  CtReq->CommandResponse.bits.CmdRsp =
      be16_to_cpu(130);
  CtReq->un.rnn.PortId = cpu_to_be32(vport->fc_myDID);
  memcpy(CtReq->un.rnn.wwnn, &vport->fc_nodename,
         sizeof (struct lpfc_name));
  cmpl = lpfc_cmpl_ct_cmd_rnn_id;
  break;

 case 128:
  vport->ct_flags &= ~FC_CT_RSPN_ID;
  CtReq->CommandResponse.bits.CmdRsp =
      be16_to_cpu(128);
  CtReq->un.rspn.PortId = cpu_to_be32(vport->fc_myDID);
  size = sizeof(CtReq->un.rspn.symbname);
  CtReq->un.rspn.len =
   lpfc_vport_symbolic_port_name(vport,
   CtReq->un.rspn.symbname, size);
  cmpl = lpfc_cmpl_ct_cmd_rspn_id;
  break;
 case 129:
  vport->ct_flags &= ~FC_CT_RSNN_NN;
  CtReq->CommandResponse.bits.CmdRsp =
      be16_to_cpu(129);
  memcpy(CtReq->un.rsnn.wwnn, &vport->fc_nodename,
         sizeof (struct lpfc_name));
  size = sizeof(CtReq->un.rsnn.symbname);
  CtReq->un.rsnn.len =
   lpfc_vport_symbolic_node_name(vport,
   CtReq->un.rsnn.symbname, size);
  cmpl = lpfc_cmpl_ct_cmd_rsnn_nn;
  break;
 case 135:

  CtReq->CommandResponse.bits.CmdRsp =
   be16_to_cpu(135);
  CtReq->un.da_id.port_id = cpu_to_be32(vport->fc_myDID);
  cmpl = lpfc_cmpl_ct_cmd_da_id;
  break;
 case 132:
  vport->ct_flags &= ~FC_CT_RFF_ID;
  CtReq->CommandResponse.bits.CmdRsp =
      be16_to_cpu(132);
  CtReq->un.rff.PortId = cpu_to_be32(vport->fc_myDID);
  CtReq->un.rff.fbits = FC4_FEATURE_INIT;
  CtReq->un.rff.type_code = FC_TYPE_FCP;
  cmpl = lpfc_cmpl_ct_cmd_rff_id;
  break;
 }



 if (!lpfc_ct_cmd(vport, mp, bmp, ndlp, cmpl, rsp_size, retry)) {

  lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_CT,
   "Issue CT cmd:    cmd:x%x did:x%x",
   cmdcode, ndlp->nlp_DID, 0);
  return 0;
 }
 rc=6;




 lpfc_nlp_put(ndlp);

 lpfc_mbuf_free(phba, bmp->virt, bmp->phys);
ns_cmd_free_bmp:
 kfree(bmp);
ns_cmd_free_mpvirt:
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
ns_cmd_free_mp:
 kfree(mp);
ns_cmd_exit:
 lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
    "0266 Issue NameServer Req x%x err %d Data: x%x x%x\n",
    cmdcode, rc, vport->fc_flag, vport->fc_rscn_id_cnt);
 return 1;
}
