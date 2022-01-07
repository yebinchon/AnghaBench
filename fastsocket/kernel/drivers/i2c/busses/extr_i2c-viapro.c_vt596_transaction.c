
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SMBHSTADD ;
 int SMBHSTCNT ;
 int SMBHSTSTS ;
 int VT596_BYTE ;
 int VT596_QUICK ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int inb_p (int ) ;
 int msleep (int) ;
 int outb_p (int,int ) ;
 TYPE_1__ vt596_adapter ;
 int vt596_dump_regs (char*,int) ;

__attribute__((used)) static int vt596_transaction(u8 size)
{
 int temp;
 int result = 0;
 int timeout = 0;

 vt596_dump_regs("Transaction (pre)", size);


 if ((temp = inb_p(SMBHSTSTS)) & 0x1F) {
  dev_dbg(&vt596_adapter.dev, "SMBus busy (0x%02x). "
   "Resetting...\n", temp);

  outb_p(temp, SMBHSTSTS);
  if ((temp = inb_p(SMBHSTSTS)) & 0x1F) {
   dev_err(&vt596_adapter.dev, "SMBus reset failed! "
    "(0x%02x)\n", temp);
   return -EBUSY;
  }
 }


 outb_p(0x40 | size, SMBHSTCNT);


 do {
  msleep(1);
  temp = inb_p(SMBHSTSTS);
 } while ((temp & 0x01) && (timeout++ < MAX_TIMEOUT));


 if (timeout >= MAX_TIMEOUT) {
  result = -ETIMEDOUT;
  dev_err(&vt596_adapter.dev, "SMBus timeout!\n");
 }

 if (temp & 0x10) {
  result = -EIO;
  dev_err(&vt596_adapter.dev, "Transaction failed (0x%02x)\n",
   size);
 }

 if (temp & 0x08) {
  result = -EIO;
  dev_err(&vt596_adapter.dev, "SMBus collision!\n");
 }

 if (temp & 0x04) {
  int read = inb_p(SMBHSTADD) & 0x01;
  result = -ENXIO;



  if (!((size == VT596_QUICK && !read) ||
        (size == VT596_BYTE && read)))
   dev_err(&vt596_adapter.dev, "Transaction error!\n");
 }


 if (temp & 0x1F)
  outb_p(temp, SMBHSTSTS);

 vt596_dump_regs("Transaction (post)", size);

 return result;
}
