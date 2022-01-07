
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {int intf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char WAC_CMD_ICON_START ;
 unsigned char WAC_CMD_ICON_XFER ;
 int WAC_CMD_RETRIES ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memcpy (unsigned char*,void const*,int) ;
 int wacom_set_report (int ,int,unsigned char,unsigned char*,int,int ) ;

__attribute__((used)) static int wacom_led_putimage(struct wacom *wacom, int button_id, const void *img)
{
 unsigned char *buf;
 int i, retval;

 buf = kzalloc(259, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;


 buf[0] = WAC_CMD_ICON_START;
 buf[1] = 1;
 retval = wacom_set_report(wacom->intf, 0x03, WAC_CMD_ICON_START,
      buf, 2, WAC_CMD_RETRIES);
 if (retval < 0)
  goto out;

 buf[0] = WAC_CMD_ICON_XFER;
 buf[1] = button_id & 0x07;
 for (i = 0; i < 4; i++) {
  buf[2] = i;
  memcpy(buf + 3, img + i * 256, 256);

  retval = wacom_set_report(wacom->intf, 0x03, WAC_CMD_ICON_XFER,
       buf, 259, WAC_CMD_RETRIES);
  if (retval < 0)
   break;
 }


 buf[0] = WAC_CMD_ICON_START;
 buf[1] = 0;
 wacom_set_report(wacom->intf, 0x03, WAC_CMD_ICON_START,
    buf, 2, WAC_CMD_RETRIES);

out:
 kfree(buf);
 return retval;
}
