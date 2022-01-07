
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef size_t u32 ;
typedef int u16 ;
struct qib_pportdata {TYPE_1__* cpspec; struct qib_devdata* dd; } ;
struct qib_devdata {int first_user_ctxt; TYPE_3__* pport; int pcidev; } ;
struct TYPE_6__ {TYPE_2__* cpspec; } ;
struct TYPE_5__ {unsigned long long ibsymdelta; unsigned long long iblnkerrdelta; scalar_t__ ibdeltainprog; } ;
struct TYPE_4__ {unsigned long long ibsymsnap; unsigned long long iblnkerrsnap; } ;


 size_t ARRAY_SIZE (int const*) ;
 int cr_portovfl ;
 int qib_devinfo (int ,char*,size_t) ;
 unsigned long long read_7220_creg (struct qib_devdata*,int) ;
 unsigned long long read_7220_creg32 (struct qib_devdata*,int) ;

__attribute__((used)) static u64 qib_portcntr_7220(struct qib_pportdata *ppd, u32 reg)
{
 u64 ret = 0ULL;
 struct qib_devdata *dd = ppd->dd;
 u16 creg;

 static const u16 xlator[] = {
  [179] = 146,
  [161] = 128,
  [173] = 140,
  [172] = 139,
  [171] = 138,
  [165] = 132,
  [180] = 147,
  [177] = 144,
  [176] = 143,
  [170] = 137,
  [169] = 136,
  [162] = 129,
  [168] = 135,
  [167] = 134,
  [166] = 133,
  [193] = 158,
  [189] = 154,
  [191] = 156,
  [194] = 160,
  [188] = 159,
  [184] = 150,
  [183] = 149,
  [164] = 131,
  [187] = 153,
  [192] = 157,
  [186] = 152,
  [185] = 151,
  [181] = 148,
  [178] = 145,
  [175] = 142,
  [174] = 141,
  [163] = 130,
  [190] = 155,
  [182] = 0xffff,
 };

 if (reg >= ARRAY_SIZE(xlator)) {
  qib_devinfo(ppd->dd->pcidev,
    "Unimplemented portcounter %u\n", reg);
  goto done;
 }
 creg = xlator[reg];

 if (reg == 182) {
  int i;


  for (i = 0; i < dd->first_user_ctxt; i++)
   ret += read_7220_creg32(dd, cr_portovfl + i);
 }
 if (creg == 0xffff)
  goto done;





 if ((creg == 128 || creg == 129 ||
      creg == 146 || creg == 147))
  ret = read_7220_creg(dd, creg);
 else
  ret = read_7220_creg32(dd, creg);
 if (creg == 150) {
  if (dd->pport->cpspec->ibdeltainprog)
   ret -= ret - ppd->cpspec->ibsymsnap;
  ret -= dd->pport->cpspec->ibsymdelta;
 } else if (creg == 151) {
  if (dd->pport->cpspec->ibdeltainprog)
   ret -= ret - ppd->cpspec->iblnkerrsnap;
  ret -= dd->pport->cpspec->iblnkerrdelta;
 }
done:
 return ret;
}
