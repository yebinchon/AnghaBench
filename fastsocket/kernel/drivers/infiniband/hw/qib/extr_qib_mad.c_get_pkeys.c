
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qib_pportdata {size_t hw_pidx; } ;
struct qib_devdata {struct qib_ctxtdata** rcd; struct qib_pportdata* pport; } ;
struct qib_ctxtdata {int pkeys; } ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static int get_pkeys(struct qib_devdata *dd, u8 port, u16 *pkeys)
{
 struct qib_pportdata *ppd = dd->pport + port - 1;





 struct qib_ctxtdata *rcd = dd->rcd[ppd->hw_pidx];

 memcpy(pkeys, rcd->pkeys, sizeof(rcd->pkeys));

 return 0;
}
