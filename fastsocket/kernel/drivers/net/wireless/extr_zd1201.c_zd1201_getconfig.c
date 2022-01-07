
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd1201 {int rxlen; unsigned char* rxdata; TYPE_1__* usb; scalar_t__ rxdatas; int rxdataq; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENODATA ;
 int ZD1201_ACCESSBIT ;
 int ZD1201_CMDCODE_ACCESS ;
 int ZD1201_CMDCODE_SETRXRID ;
 unsigned char ZD1201_PACKET_RESOURCE ;
 int dev_dbg (int *,char*,unsigned char,...) ;
 int le16_to_cpu (int ) ;
 int memcpy (void*,unsigned char*,int) ;
 int wait_event_interruptible (int ,scalar_t__) ;
 int zd1201_docmd (struct zd1201*,int ,int,int ,int) ;

__attribute__((used)) static int zd1201_getconfig(struct zd1201 *zd, int rid, void *riddata,
 unsigned int riddatalen)
{
 int err;
 int i = 0;
 int code;
 int rid_fid;
 int length;
 unsigned char *pdata;

 zd->rxdatas = 0;
 err = zd1201_docmd(zd, ZD1201_CMDCODE_ACCESS, rid, 0, 0);
 if (err)
  return err;

 wait_event_interruptible(zd->rxdataq, zd->rxdatas);
 if (!zd->rxlen)
  return -EIO;

 code = le16_to_cpu(*(__le16*)(&zd->rxdata[4]));
 rid_fid = le16_to_cpu(*(__le16*)(&zd->rxdata[6]));
 length = le16_to_cpu(*(__le16*)(&zd->rxdata[8]));
 if (length > zd->rxlen)
  length = zd->rxlen-6;


 if ((code & ZD1201_ACCESSBIT) != ZD1201_ACCESSBIT || rid_fid != rid )
  return -EINVAL;


 if (riddatalen != (length - 4)) {
  dev_dbg(&zd->usb->dev, "riddatalen mismatches, expected=%u, (packet=%u) length=%u, rid=0x%04X, rid_fid=0x%04X\n",
      riddatalen, zd->rxlen, length, rid, rid_fid);
  return -ENODATA;
 }

 zd->rxdatas = 0;

 err = zd1201_docmd(zd, ZD1201_CMDCODE_SETRXRID, rid, 0, length);
 if (err)
  return err;


 wait_event_interruptible(zd->rxdataq, zd->rxdatas);
 if (!zd->rxlen)
  return -EIO;

 if (zd->rxdata[zd->rxlen - 1] != ZD1201_PACKET_RESOURCE) {
  dev_dbg(&zd->usb->dev, "Packet type mismatch: 0x%x not 0x3\n",
      zd->rxdata[zd->rxlen-1]);
  return -EINVAL;
 }


 pdata = zd->rxdata;
 length = zd->rxlen;

 do {
  int actual_length;

  actual_length = (length > 64) ? 64 : length;

  if (pdata[0] != 0x3) {
   dev_dbg(&zd->usb->dev, "Rx Resource packet type error: %02X\n",
       pdata[0]);
   return -EINVAL;
  }

  if (actual_length != 64) {

   actual_length--;
  }


  if (i == 0) {
   pdata += 8;
   actual_length -= 8;
  } else {
   pdata += 4;
   actual_length -= 4;
  }

  memcpy(riddata, pdata, actual_length);
  riddata += actual_length;
  pdata += actual_length;
  length -= 64;
  i++;
 } while (length > 0);

 return 0;
}
