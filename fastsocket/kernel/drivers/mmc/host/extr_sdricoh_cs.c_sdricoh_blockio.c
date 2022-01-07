
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdricoh_host {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int R21C_STATUS ;
 int R230_DATA ;
 int STATUS_READY_TO_READ ;
 int STATUS_READY_TO_WRITE ;
 int TRANSFER_TIMEOUT ;
 int min (int,int) ;
 scalar_t__ sdricoh_query_status (struct sdricoh_host*,int ,int ) ;
 int sdricoh_readl (struct sdricoh_host*,int ) ;
 int sdricoh_writel (struct sdricoh_host*,int ,int) ;

__attribute__((used)) static int sdricoh_blockio(struct sdricoh_host *host, int read,
    u8 *buf, int len)
{
 int size;
 u32 data = 0;

 if (read) {
  if (sdricoh_query_status(host, STATUS_READY_TO_READ,
      TRANSFER_TIMEOUT))
   return -ETIMEDOUT;
  sdricoh_writel(host, R21C_STATUS, 0x18);

  while (len) {
   data = sdricoh_readl(host, R230_DATA);
   size = min(len, 4);
   len -= size;
   while (size) {
    *buf = data & 0xFF;
    buf++;
    data >>= 8;
    size--;
   }
  }
 } else {
  if (sdricoh_query_status(host, STATUS_READY_TO_WRITE,
      TRANSFER_TIMEOUT))
   return -ETIMEDOUT;
  sdricoh_writel(host, R21C_STATUS, 0x18);

  while (len) {
   size = min(len, 4);
   len -= size;
   while (size) {
    data >>= 8;
    data |= (u32)*buf << 24;
    buf++;
    size--;
   }
   sdricoh_writel(host, R230_DATA, data);
  }
 }

 if (len)
  return -EIO;

 return 0;
}
