
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l4_kwq_update_pg {int flags; int pg_valids; int pg_host_opaque; int da5; int da4; int da3; int da2; int da1; int da0; int pg_cid; int opcode; } ;
struct kwqe {int dummy; } ;
struct cnic_sock {int l5_cid; int * ha; int pg_cid; int kwqe1; struct cnic_dev* dev; } ;
struct cnic_dev {int (* submit_kwqes ) (struct cnic_dev*,struct kwqe**,int) ;} ;


 int L4_KWQE_OPCODE_VALUE_UPDATE_PG ;
 int L4_KWQ_UPDATE_PG_LAYER_CODE_SHIFT ;
 int L4_KWQ_UPDATE_PG_VALIDS_DA ;
 int L4_LAYER_CODE ;
 int memset (struct l4_kwq_update_pg*,int ,int) ;
 int stub1 (struct cnic_dev*,struct kwqe**,int) ;

__attribute__((used)) static int cnic_cm_update_pg(struct cnic_sock *csk)
{
 struct cnic_dev *dev = csk->dev;
 struct l4_kwq_update_pg *l4kwqe;
 struct kwqe *wqes[1];

 l4kwqe = (struct l4_kwq_update_pg *) &csk->kwqe1;
 memset(l4kwqe, 0, sizeof(*l4kwqe));
 wqes[0] = (struct kwqe *) l4kwqe;

 l4kwqe->opcode = L4_KWQE_OPCODE_VALUE_UPDATE_PG;
 l4kwqe->flags =
  L4_LAYER_CODE << L4_KWQ_UPDATE_PG_LAYER_CODE_SHIFT;
 l4kwqe->pg_cid = csk->pg_cid;

 l4kwqe->da0 = csk->ha[0];
 l4kwqe->da1 = csk->ha[1];
 l4kwqe->da2 = csk->ha[2];
 l4kwqe->da3 = csk->ha[3];
 l4kwqe->da4 = csk->ha[4];
 l4kwqe->da5 = csk->ha[5];

 l4kwqe->pg_host_opaque = csk->l5_cid;
 l4kwqe->pg_valids = L4_KWQ_UPDATE_PG_VALIDS_DA;

 return dev->submit_kwqes(dev, wqes, 1);
}
