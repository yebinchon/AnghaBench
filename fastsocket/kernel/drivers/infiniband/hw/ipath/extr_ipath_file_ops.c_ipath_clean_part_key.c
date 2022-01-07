
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ipath_portdata {int* port_pkeys; int port_port; } ;
struct ipath_devdata {int* ipath_pkeys; TYPE_1__* ipath_kregs; int * ipath_pkeyrefs; } ;
struct TYPE_4__ {int* sps_pkeys; } ;
struct TYPE_3__ {int kr_partitionkey; } ;


 int ARRAY_SIZE (int*) ;
 int VERBOSE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int ipath_cdbg (int ,char*,int,unsigned long long,...) ;
 TYPE_2__ ipath_stats ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;

__attribute__((used)) static void ipath_clean_part_key(struct ipath_portdata *pd,
     struct ipath_devdata *dd)
{
 int i, j, pchanged = 0;
 u64 oldpkey;


 oldpkey = (u64) dd->ipath_pkeys[0] |
  ((u64) dd->ipath_pkeys[1] << 16) |
  ((u64) dd->ipath_pkeys[2] << 32) |
  ((u64) dd->ipath_pkeys[3] << 48);

 for (i = 0; i < ARRAY_SIZE(pd->port_pkeys); i++) {
  if (!pd->port_pkeys[i])
   continue;
  ipath_cdbg(VERBOSE, "look for key[%d] %hx in pkeys\n", i,
      pd->port_pkeys[i]);
  for (j = 0; j < ARRAY_SIZE(dd->ipath_pkeys); j++) {

   if ((dd->ipath_pkeys[j] & 0x7fff) !=
       (pd->port_pkeys[i] & 0x7fff))
    continue;
   if (atomic_dec_and_test(&dd->ipath_pkeyrefs[j])) {
    ipath_cdbg(VERBOSE, "p%u clear key "
        "%x matches #%d\n",
        pd->port_port,
        pd->port_pkeys[i], j);
    ipath_stats.sps_pkeys[j] =
     dd->ipath_pkeys[j] = 0;
    pchanged++;
   }
   else ipath_cdbg(
    VERBOSE, "p%u key %x matches #%d, "
    "but ref still %d\n", pd->port_port,
    pd->port_pkeys[i], j,
    atomic_read(&dd->ipath_pkeyrefs[j]));
   break;
  }
  pd->port_pkeys[i] = 0;
 }
 if (pchanged) {
  u64 pkey = (u64) dd->ipath_pkeys[0] |
   ((u64) dd->ipath_pkeys[1] << 16) |
   ((u64) dd->ipath_pkeys[2] << 32) |
   ((u64) dd->ipath_pkeys[3] << 48);
  ipath_cdbg(VERBOSE, "p%u old pkey reg %llx, "
      "new pkey reg %llx\n", pd->port_port,
      (unsigned long long) oldpkey,
      (unsigned long long) pkey);
  ipath_write_kreg(dd, dd->ipath_kregs->kr_partitionkey,
     pkey);
 }
}
