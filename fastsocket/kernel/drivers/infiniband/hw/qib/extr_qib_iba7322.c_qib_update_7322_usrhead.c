
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qib_ctxtdata {int ctxt; int dd; } ;


 int IBA7322_HDRHEAD_PKTINT_SHIFT ;
 int adjust_rcv_timeout (struct qib_ctxtdata*,int) ;
 int mmiowb () ;
 int qib_write_ureg (int ,int ,int,int ) ;
 int ur_rcvegrindexhead ;
 int ur_rcvhdrhead ;

__attribute__((used)) static void qib_update_7322_usrhead(struct qib_ctxtdata *rcd, u64 hd,
        u32 updegr, u32 egrhd, u32 npkts)
{




 if (hd >> IBA7322_HDRHEAD_PKTINT_SHIFT)
  adjust_rcv_timeout(rcd, npkts);
 if (updegr)
  qib_write_ureg(rcd->dd, ur_rcvegrindexhead, egrhd, rcd->ctxt);
 mmiowb();
 qib_write_ureg(rcd->dd, ur_rcvhdrhead, hd, rcd->ctxt);
 qib_write_ureg(rcd->dd, ur_rcvhdrhead, hd, rcd->ctxt);
 mmiowb();
}
