
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_devdata {int dummy; } ;


 int IBSD_RESYNC_TRIES ;
 int IB_7220_SERDES ;
 int IB_CMUDONE (int) ;
 int IB_PGUDP (int) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_sd7220_reg_mod (struct qib_devdata*,int ,int ,int,int) ;

__attribute__((used)) static int qib_resync_ibepb(struct qib_devdata *dd)
{
 int ret, pat, tries, chn;
 u32 loc;

 ret = -1;
 chn = 0;
 for (tries = 0; tries < (4 * IBSD_RESYNC_TRIES); ++tries) {
  loc = IB_PGUDP(chn);
  ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, loc, 0, 0);
  if (ret < 0) {
   qib_dev_err(dd, "Failed read in resync\n");
   continue;
  }
  if (ret != 0xF0 && ret != 0x55 && tries == 0)
   qib_dev_err(dd, "unexpected pattern in resync\n");
  pat = ret ^ 0xA5;
  ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, loc, pat, 0xFF);
  if (ret < 0) {
   qib_dev_err(dd, "Failed write in resync\n");
   continue;
  }
  ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, loc, 0, 0);
  if (ret < 0) {
   qib_dev_err(dd, "Failed re-read in resync\n");
   continue;
  }
  if (ret != pat) {
   qib_dev_err(dd, "Failed compare1 in resync\n");
   continue;
  }
  loc = IB_CMUDONE(chn);
  ret = qib_sd7220_reg_mod(dd, IB_7220_SERDES, loc, 0, 0);
  if (ret < 0) {
   qib_dev_err(dd, "Failed CMUDONE rd in resync\n");
   continue;
  }
  if ((ret & 0x70) != ((chn << 4) | 0x40)) {
   qib_dev_err(dd, "Bad CMUDONE value %02X, chn %d\n",
        ret, chn);
   continue;
  }
  if (++chn == 4)
   break;
 }
 return (ret > 0) ? 0 : ret;
}
