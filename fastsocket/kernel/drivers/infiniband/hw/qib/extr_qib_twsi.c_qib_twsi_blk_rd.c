
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int dummy; } ;


 int QIB_TWSI_NO_DEV ;
 int QIB_TWSI_START ;
 int READ_CMD ;
 int TWSI_BUF_WAIT_USEC ;
 int WRITE_CMD ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int qib_twsi_wr (struct qib_devdata*,int,int ) ;
 int rd_byte (struct qib_devdata*,int) ;
 int stop_cmd (struct qib_devdata*) ;
 int udelay (int ) ;

int qib_twsi_blk_rd(struct qib_devdata *dd, int dev, int addr,
      void *buffer, int len)
{
 int ret;
 u8 *bp = buffer;

 ret = 1;

 if (dev == QIB_TWSI_NO_DEV) {

  addr = (addr << 1) | READ_CMD;
  ret = qib_twsi_wr(dd, addr, QIB_TWSI_START);
 } else {

  ret = qib_twsi_wr(dd, dev | WRITE_CMD, QIB_TWSI_START);
  if (ret) {
   stop_cmd(dd);
   ret = 1;
   goto bail;
  }







  ret = qib_twsi_wr(dd, addr, 0);
  udelay(TWSI_BUF_WAIT_USEC);

  if (ret) {
   qib_dev_err(dd,
    "Failed to write interface read addr %02X\n",
    addr);
   ret = 1;
   goto bail;
  }
  ret = qib_twsi_wr(dd, dev | READ_CMD, QIB_TWSI_START);
 }
 if (ret) {
  stop_cmd(dd);
  ret = 1;
  goto bail;
 }
 while (len-- > 0) {




  *bp++ = rd_byte(dd, !len);
 }

 ret = 0;

bail:
 return ret;
}
