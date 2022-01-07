
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct bfi_phy_write_rsp_s {int status; } ;
struct bfi_phy_stats_rsp_s {int status; } ;
struct bfi_phy_read_rsp_s {int length; int status; } ;
struct bfi_phy_query_rsp_s {int status; } ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfa_phy_stats_s {int status; } ;
struct bfa_phy_s {int ubuf; int status; int residue; int offset; int cbarg; int (* cbfn ) (int ,int) ;int op_busy; scalar_t__ dbuf_kva; } ;
struct bfa_phy_attr_s {int status; int length; } ;


 int BFA_STATUS_OK ;




 int WARN_ON (int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int bfa_phy_ntoh32 (int*,int*,int) ;
 int bfa_phy_read_send (struct bfa_phy_s*) ;
 int bfa_phy_write_send (struct bfa_phy_s*) ;
 int bfa_trc (struct bfa_phy_s*,int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int stub5 (int ,int) ;

void
bfa_phy_intr(void *phyarg, struct bfi_mbmsg_s *msg)
{
 struct bfa_phy_s *phy = phyarg;
 u32 status;

 union {
  struct bfi_phy_query_rsp_s *query;
  struct bfi_phy_stats_rsp_s *stats;
  struct bfi_phy_write_rsp_s *write;
  struct bfi_phy_read_rsp_s *read;
  struct bfi_mbmsg_s *msg;
 } m;

 m.msg = msg;
 bfa_trc(phy, msg->mh.msg_id);

 if (!phy->op_busy) {

  bfa_trc(phy, 0x9999);
  return;
 }

 switch (msg->mh.msg_id) {
 case 131:
  status = be32_to_cpu(m.query->status);
  bfa_trc(phy, status);

  if (status == BFA_STATUS_OK) {
   struct bfa_phy_attr_s *attr =
    (struct bfa_phy_attr_s *) phy->ubuf;
   bfa_phy_ntoh32((u32 *)attr, (u32 *)phy->dbuf_kva,
     sizeof(struct bfa_phy_attr_s));
   bfa_trc(phy, attr->status);
   bfa_trc(phy, attr->length);
  }

  phy->status = status;
  phy->op_busy = 0;
  if (phy->cbfn)
   phy->cbfn(phy->cbarg, phy->status);
  break;
 case 129:
  status = be32_to_cpu(m.stats->status);
  bfa_trc(phy, status);

  if (status == BFA_STATUS_OK) {
   struct bfa_phy_stats_s *stats =
    (struct bfa_phy_stats_s *) phy->ubuf;
   bfa_phy_ntoh32((u32 *)stats, (u32 *)phy->dbuf_kva,
    sizeof(struct bfa_phy_stats_s));
    bfa_trc(phy, stats->status);
  }

  phy->status = status;
  phy->op_busy = 0;
  if (phy->cbfn)
   phy->cbfn(phy->cbarg, phy->status);
  break;
 case 128:
  status = be32_to_cpu(m.write->status);
  bfa_trc(phy, status);

  if (status != BFA_STATUS_OK || phy->residue == 0) {
   phy->status = status;
   phy->op_busy = 0;
   if (phy->cbfn)
    phy->cbfn(phy->cbarg, phy->status);
  } else {
   bfa_trc(phy, phy->offset);
   bfa_phy_write_send(phy);
  }
  break;
 case 130:
  status = be32_to_cpu(m.read->status);
  bfa_trc(phy, status);

  if (status != BFA_STATUS_OK) {
   phy->status = status;
   phy->op_busy = 0;
   if (phy->cbfn)
    phy->cbfn(phy->cbarg, phy->status);
  } else {
   u32 len = be32_to_cpu(m.read->length);
   u16 *buf = (u16 *)(phy->ubuf + phy->offset);
   u16 *dbuf = (u16 *)phy->dbuf_kva;
   int i, sz = len >> 1;

   bfa_trc(phy, phy->offset);
   bfa_trc(phy, len);

   for (i = 0; i < sz; i++)
    buf[i] = be16_to_cpu(dbuf[i]);

   phy->residue -= len;
   phy->offset += len;

   if (phy->residue == 0) {
    phy->status = status;
    phy->op_busy = 0;
    if (phy->cbfn)
     phy->cbfn(phy->cbarg, phy->status);
   } else
    bfa_phy_read_send(phy);
  }
  break;
 default:
  WARN_ON(1);
 }
}
