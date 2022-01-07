
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int dummy; } ;


 int QIB_TWSI_NO_DEV ;
 int QIB_TWSI_START ;
 int READ_CMD ;
 int WRITE_CMD ;
 int min (int,int) ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int qib_twsi_wr (struct qib_devdata*,int,int ) ;
 int rd_byte (struct qib_devdata*,int) ;
 int stop_cmd (struct qib_devdata*) ;

int qib_twsi_blk_wr(struct qib_devdata *dd, int dev, int addr,
      const void *buffer, int len)
{
 int sub_len;
 const u8 *bp = buffer;
 int max_wait_time, i;
 int ret;
 ret = 1;

 while (len > 0) {
  if (dev == QIB_TWSI_NO_DEV) {
   if (qib_twsi_wr(dd, (addr << 1) | WRITE_CMD,
     QIB_TWSI_START)) {
    goto failed_write;
   }
  } else {

   if (qib_twsi_wr(dd, dev | WRITE_CMD, QIB_TWSI_START))
    goto failed_write;
   ret = qib_twsi_wr(dd, addr, 0);
   if (ret) {
    qib_dev_err(dd,
     "Failed to write interface write addr %02X\n",
     addr);
    goto failed_write;
   }
  }

  sub_len = min(len, 4);
  addr += sub_len;
  len -= sub_len;

  for (i = 0; i < sub_len; i++)
   if (qib_twsi_wr(dd, *bp++, 0))
    goto failed_write;

  stop_cmd(dd);
  max_wait_time = 100;
  while (qib_twsi_wr(dd, dev | READ_CMD, QIB_TWSI_START)) {
   stop_cmd(dd);
   if (!--max_wait_time)
    goto failed_write;
  }

  rd_byte(dd, 1);
 }

 ret = 0;
 goto bail;

failed_write:
 stop_cmd(dd);
 ret = 1;

bail:
 return ret;
}
