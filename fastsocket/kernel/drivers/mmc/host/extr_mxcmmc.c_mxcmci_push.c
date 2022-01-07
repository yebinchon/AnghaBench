
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mxcmci_host {scalar_t__ base; } ;


 scalar_t__ MMC_REG_BUFFER_ACCESS ;
 int STATUS_BUF_WRITE_RDY ;
 int memcpy (int *,int *,int) ;
 unsigned int mxcmci_poll_status (struct mxcmci_host*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxcmci_push(struct mxcmci_host *host, void *_buf, int bytes)
{
 unsigned int stat;
 u32 *buf = _buf;

 while (bytes > 3) {
  stat = mxcmci_poll_status(host, STATUS_BUF_WRITE_RDY);
  if (stat)
   return stat;
  writel(*buf++, host->base + MMC_REG_BUFFER_ACCESS);
  bytes -= 4;
 }

 if (bytes) {
  u8 *b = (u8 *)buf;
  u32 tmp;

  stat = mxcmci_poll_status(host, STATUS_BUF_WRITE_RDY);
  if (stat)
   return stat;

  memcpy(&tmp, b, bytes);
  writel(tmp, host->base + MMC_REG_BUFFER_ACCESS);
 }

 stat = mxcmci_poll_status(host, STATUS_BUF_WRITE_RDY);
 if (stat)
  return stat;

 return 0;
}
