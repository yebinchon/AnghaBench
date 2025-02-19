
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_sd {int cmd_flags; unsigned char* bounce_buf_data; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; } ;
struct page {int dummy; } ;


 int DATA_CARRY ;
 int KM_BIO_SRC_IRQ ;
 scalar_t__ SOCK_MMCSD_DATA ;
 unsigned char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tifm_sd_write_fifo(struct tifm_sd *host, struct page *pg,
          unsigned int off, unsigned int cnt)
{
 struct tifm_dev *sock = host->dev;
 unsigned char *buf;
 unsigned int pos = 0, val;

 buf = kmap_atomic(pg, KM_BIO_SRC_IRQ) + off;
 if (host->cmd_flags & DATA_CARRY) {
  val = host->bounce_buf_data[0] | ((buf[pos++] << 8) & 0xff00);
  writel(val, sock->addr + SOCK_MMCSD_DATA);
  host->cmd_flags &= ~DATA_CARRY;
 }

 while (pos < cnt) {
  val = buf[pos++];
  if (pos == cnt) {
   host->bounce_buf_data[0] = val & 0xff;
   host->cmd_flags |= DATA_CARRY;
   break;
  }
  val |= (buf[pos++] << 8) & 0xff00;
  writel(val, sock->addr + SOCK_MMCSD_DATA);
 }
 kunmap_atomic(buf - off, KM_BIO_SRC_IRQ);
}
