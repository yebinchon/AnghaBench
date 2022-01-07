
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {TYPE_1__* dd; } ;
struct qib_ibport {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* f_portcntr ) (struct qib_pportdata*,int ) ;} ;







 int QIBPORTCNTR_PSRCVDATA ;
 int QIBPORTCNTR_PSRCVPKTS ;
 int QIBPORTCNTR_PSXMITDATA ;
 int QIBPORTCNTR_PSXMITPKTS ;
 int QIBPORTCNTR_PSXMITWAIT ;
 int stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*,int ) ;
 int stub3 (struct qib_pportdata*,int ) ;
 int stub4 (struct qib_pportdata*,int ) ;
 int stub5 (struct qib_pportdata*,int ) ;

__attribute__((used)) static u64 get_counter(struct qib_ibport *ibp, struct qib_pportdata *ppd,
         __be16 sel)
{
 u64 ret;

 switch (sel) {
 case 130:
  ret = ppd->dd->f_portcntr(ppd, QIBPORTCNTR_PSXMITDATA);
  break;
 case 132:
  ret = ppd->dd->f_portcntr(ppd, QIBPORTCNTR_PSRCVDATA);
  break;
 case 129:
  ret = ppd->dd->f_portcntr(ppd, QIBPORTCNTR_PSXMITPKTS);
  break;
 case 131:
  ret = ppd->dd->f_portcntr(ppd, QIBPORTCNTR_PSRCVPKTS);
  break;
 case 128:
  ret = ppd->dd->f_portcntr(ppd, QIBPORTCNTR_PSXMITWAIT);
  break;
 default:
  ret = 0;
 }

 return ret;
}
