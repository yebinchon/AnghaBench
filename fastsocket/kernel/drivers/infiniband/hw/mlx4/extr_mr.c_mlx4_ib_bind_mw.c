
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wr ;
struct TYPE_3__ {int rkey; int bind_info; struct ib_mw* mw; } ;
struct TYPE_4__ {TYPE_1__ bind_mw; } ;
struct ib_send_wr {TYPE_2__ wr; int send_flags; int wr_id; int opcode; } ;
struct ib_qp {int dummy; } ;
struct ib_mw_bind {int bind_info; int send_flags; int wr_id; } ;
struct ib_mw {int rkey; } ;


 int IB_WR_BIND_MW ;
 int ib_inc_rkey (int ) ;
 int memset (struct ib_send_wr*,int ,int) ;
 int mlx4_ib_post_send (struct ib_qp*,struct ib_send_wr*,struct ib_send_wr**) ;

int mlx4_ib_bind_mw(struct ib_qp *qp, struct ib_mw *mw,
      struct ib_mw_bind *mw_bind)
{
 struct ib_send_wr wr;
 struct ib_send_wr *bad_wr;
 int ret;

 memset(&wr, 0, sizeof(wr));
 wr.opcode = IB_WR_BIND_MW;
 wr.wr_id = mw_bind->wr_id;
 wr.send_flags = mw_bind->send_flags;
 wr.wr.bind_mw.mw = mw;
 wr.wr.bind_mw.bind_info = mw_bind->bind_info;
 wr.wr.bind_mw.rkey = ib_inc_rkey(mw->rkey);

 ret = mlx4_ib_post_send(qp, &wr, &bad_wr);
 if (!ret)
  mw->rkey = wr.wr.bind_mw.rkey;

 return ret;
}
