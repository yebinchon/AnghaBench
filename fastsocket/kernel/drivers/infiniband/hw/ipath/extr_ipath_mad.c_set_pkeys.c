
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ipath_portdata {int* port_pkeys; } ;
struct ipath_devdata {TYPE_1__* ipath_kregs; scalar_t__* ipath_pkeys; struct ipath_portdata** ipath_pd; } ;
struct TYPE_2__ {int kr_partitionkey; } ;


 int ARRAY_SIZE (int*) ;
 int VERBOSE ;
 int add_pkey (struct ipath_devdata*,int) ;
 int ipath_cdbg (int ,char*,unsigned long long) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 int rm_pkey (struct ipath_devdata*,int) ;

__attribute__((used)) static int set_pkeys(struct ipath_devdata *dd, u16 *pkeys)
{
 struct ipath_portdata *pd;
 int i;
 int changed = 0;


 pd = dd->ipath_pd[0];

 for (i = 0; i < ARRAY_SIZE(pd->port_pkeys); i++) {
  u16 key = pkeys[i];
  u16 okey = pd->port_pkeys[i];

  if (key == okey)
   continue;




  if (okey & 0x7FFF)
   changed |= rm_pkey(dd, okey);
  if (key & 0x7FFF) {
   int ret = add_pkey(dd, key);

   if (ret < 0)
    key = 0;
   else
    changed |= ret;
  }
  pd->port_pkeys[i] = key;
 }
 if (changed) {
  u64 pkey;

  pkey = (u64) dd->ipath_pkeys[0] |
   ((u64) dd->ipath_pkeys[1] << 16) |
   ((u64) dd->ipath_pkeys[2] << 32) |
   ((u64) dd->ipath_pkeys[3] << 48);
  ipath_cdbg(VERBOSE, "p0 new pkey reg %llx\n",
      (unsigned long long) pkey);
  ipath_write_kreg(dd, dd->ipath_kregs->kr_partitionkey,
     pkey);
 }
 return 0;
}
