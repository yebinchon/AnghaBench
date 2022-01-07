
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l4_kwq_offload_pg {int flags; int l2hdr_nbytes; scalar_t__ vlan_tag; int pg_flags; int host_opaque; int ipid_start; int etype; int sa5; int sa4; int sa3; int sa2; int sa1; int sa0; int da5; int da4; int da3; int da2; int da1; int da0; int op_code; } ;
struct kwqe {int dummy; } ;
struct cnic_sock {scalar_t__ vlan_id; int l5_cid; int * ha; int kwqe1; struct cnic_dev* dev; } ;
struct cnic_dev {int (* submit_kwqes ) (struct cnic_dev*,struct kwqe**,int) ;int * mac_addr; } ;


 int DEF_IPID_START ;
 int ETH_HLEN ;
 int ETH_P_IP ;
 int L4_KWQE_OPCODE_VALUE_OFFLOAD_PG ;
 int L4_KWQ_OFFLOAD_PG_LAYER_CODE_SHIFT ;
 int L4_KWQ_OFFLOAD_PG_VLAN_TAGGING ;
 int L4_LAYER_CODE ;
 int memset (struct l4_kwq_offload_pg*,int ,int) ;
 int stub1 (struct cnic_dev*,struct kwqe**,int) ;

__attribute__((used)) static int cnic_cm_offload_pg(struct cnic_sock *csk)
{
 struct cnic_dev *dev = csk->dev;
 struct l4_kwq_offload_pg *l4kwqe;
 struct kwqe *wqes[1];

 l4kwqe = (struct l4_kwq_offload_pg *) &csk->kwqe1;
 memset(l4kwqe, 0, sizeof(*l4kwqe));
 wqes[0] = (struct kwqe *) l4kwqe;

 l4kwqe->op_code = L4_KWQE_OPCODE_VALUE_OFFLOAD_PG;
 l4kwqe->flags =
  L4_LAYER_CODE << L4_KWQ_OFFLOAD_PG_LAYER_CODE_SHIFT;
 l4kwqe->l2hdr_nbytes = ETH_HLEN;

 l4kwqe->da0 = csk->ha[0];
 l4kwqe->da1 = csk->ha[1];
 l4kwqe->da2 = csk->ha[2];
 l4kwqe->da3 = csk->ha[3];
 l4kwqe->da4 = csk->ha[4];
 l4kwqe->da5 = csk->ha[5];

 l4kwqe->sa0 = dev->mac_addr[0];
 l4kwqe->sa1 = dev->mac_addr[1];
 l4kwqe->sa2 = dev->mac_addr[2];
 l4kwqe->sa3 = dev->mac_addr[3];
 l4kwqe->sa4 = dev->mac_addr[4];
 l4kwqe->sa5 = dev->mac_addr[5];

 l4kwqe->etype = ETH_P_IP;
 l4kwqe->ipid_start = DEF_IPID_START;
 l4kwqe->host_opaque = csk->l5_cid;

 if (csk->vlan_id) {
  l4kwqe->pg_flags |= L4_KWQ_OFFLOAD_PG_VLAN_TAGGING;
  l4kwqe->vlan_tag = csk->vlan_id;
  l4kwqe->l2hdr_nbytes += 4;
 }

 return dev->submit_kwqes(dev, wqes, 1);
}
