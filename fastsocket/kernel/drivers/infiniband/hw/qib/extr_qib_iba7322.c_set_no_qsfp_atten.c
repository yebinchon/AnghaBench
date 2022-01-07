
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qib_pportdata {size_t port; scalar_t__ link_speed_supported; TYPE_1__* cpspec; } ;
struct qib_devdata {size_t num_pports; size_t unit; struct qib_pportdata* pport; } ;
struct TYPE_2__ {size_t no_eep; size_t h1_val; } ;


 scalar_t__ IS_QME (struct qib_devdata*) ;
 scalar_t__ IS_QMH (struct qib_devdata*) ;
 int QLOGIC_IB_IBCC_LINKINITCMD_SLEEP ;
 int TXDDS_EXTRA_SZ ;
 scalar_t__ TXDDS_MFG_SZ ;
 int TXDDS_TABLE_SZ ;
 int init_txdds_table (struct qib_pportdata*,int) ;
 int qib_set_ib_7322_lstate (struct qib_pportdata*,int ,int ) ;
 void* simple_strtoul (char*,char**,int ) ;
 char* txselect_list ;

__attribute__((used)) static void set_no_qsfp_atten(struct qib_devdata *dd, int change)
{
 char *nxt, *str;
 u32 pidx, unit, port, deflt, h1;
 unsigned long val;
 int any = 0, seth1;
 int txdds_size;

 str = txselect_list;


 deflt = simple_strtoul(str, &nxt, 0);
 for (pidx = 0; pidx < dd->num_pports; ++pidx)
  dd->pport[pidx].cpspec->no_eep = deflt;

 txdds_size = TXDDS_TABLE_SZ + TXDDS_EXTRA_SZ;
 if (IS_QME(dd) || IS_QMH(dd))
  txdds_size += TXDDS_MFG_SZ;

 while (*nxt && nxt[1]) {
  str = ++nxt;
  unit = simple_strtoul(str, &nxt, 0);
  if (nxt == str || !*nxt || *nxt != ',') {
   while (*nxt && *nxt++ != ' ')
    ;
   continue;
  }
  str = ++nxt;
  port = simple_strtoul(str, &nxt, 0);
  if (nxt == str || *nxt != '=') {
   while (*nxt && *nxt++ != ' ')
    ;
   continue;
  }
  str = ++nxt;
  val = simple_strtoul(str, &nxt, 0);
  if (nxt == str) {
   while (*nxt && *nxt++ != ' ')
    ;
   continue;
  }
  if (val >= txdds_size)
   continue;
  seth1 = 0;
  h1 = 0;
  if (*nxt == ',' && nxt[1]) {
   str = ++nxt;
   h1 = (u32)simple_strtoul(str, &nxt, 0);
   if (nxt == str)
    while (*nxt && *nxt++ != ' ')
     ;
   else
    seth1 = 1;
  }
  for (pidx = 0; dd->unit == unit && pidx < dd->num_pports;
       ++pidx) {
   struct qib_pportdata *ppd = &dd->pport[pidx];

   if (ppd->port != port || !ppd->link_speed_supported)
    continue;
   ppd->cpspec->no_eep = val;
   if (seth1)
    ppd->cpspec->h1_val = h1;

   init_txdds_table(ppd, 1);



   if (IS_QMH(dd) || IS_QME(dd))
    qib_set_ib_7322_lstate(ppd, 0,
         QLOGIC_IB_IBCC_LINKINITCMD_SLEEP);
   any++;
  }
  if (*nxt == '\n')
   break;
 }
 if (change && !any) {




  for (pidx = 0; pidx < dd->num_pports; ++pidx)
   if (dd->pport[pidx].link_speed_supported)
    init_txdds_table(&dd->pport[pidx], 0);
 }
}
