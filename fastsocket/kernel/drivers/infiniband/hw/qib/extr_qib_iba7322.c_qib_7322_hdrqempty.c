
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_ctxtdata {int ctxt; int dd; scalar_t__ rcvhdrtail_kvaddr; } ;


 int qib_get_rcvhdrtail (struct qib_ctxtdata*) ;
 int qib_read_ureg32 (int ,int ,int ) ;
 int ur_rcvhdrhead ;
 int ur_rcvhdrtail ;

__attribute__((used)) static u32 qib_7322_hdrqempty(struct qib_ctxtdata *rcd)
{
 u32 head, tail;

 head = qib_read_ureg32(rcd->dd, ur_rcvhdrhead, rcd->ctxt);
 if (rcd->rcvhdrtail_kvaddr)
  tail = qib_get_rcvhdrtail(rcd);
 else
  tail = qib_read_ureg32(rcd->dd, ur_rcvhdrtail, rcd->ctxt);
 return head == tail;
}
