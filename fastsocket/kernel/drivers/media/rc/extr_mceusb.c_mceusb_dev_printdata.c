
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ microsoft_gen1; } ;
struct mceusb_dev {int rem; int learning_enabled; TYPE_1__ flags; struct device* dev; } ;
struct device {int dummy; } ;
 int MCE_COMMAND_IRDATA ;
 int MCE_COMMAND_MASK ;


 int MCE_IRDATA_TRAILER ;

 int USB_BUFLEN ;
 int debug ;
 int dev_info (struct device*,char*,...) ;
 int snprintf (char*,int,char*,char) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void mceusb_dev_printdata(struct mceusb_dev *ir, char *buf,
     int offset, int len, bool out)
{
 char codes[USB_BUFLEN * 3 + 1];
 char inout[9];
 u8 cmd, subcmd, data1, data2;
 struct device *dev = ir->dev;
 int i, start, skip = 0;

 if (!debug)
  return;


 if (ir->flags.microsoft_gen1 && !out && !offset)
  skip = 2;

 if (len <= skip)
  return;

 for (i = 0; i < len && i < USB_BUFLEN; i++)
  snprintf(codes + i * 3, 4, "%02x ", buf[i + offset] & 0xff);

 dev_info(dev, "%sx data: %s(length=%d)\n",
   (out ? "t" : "r"), codes, len);

 if (out)
  strcpy(inout, "Request\0");
 else
  strcpy(inout, "Got\0");

 start = offset + skip;
 cmd = buf[start] & 0xff;
 subcmd = buf[start + 1] & 0xff;
 data1 = buf[start + 2] & 0xff;
 data2 = buf[start + 3] & 0xff;

 switch (cmd) {
 case 130:
  if ((subcmd == 129) &&
      (data1 == 149))
   dev_info(dev, "Device reset requested\n");
  else
   dev_info(dev, "Unknown command 0x%02x 0x%02x\n",
     cmd, subcmd);
  break;
 case 129:
  switch (subcmd) {
  case 147:
   if (len == 2)
    dev_info(dev, "Get hw/sw rev?\n");
   else
    dev_info(dev, "hw/sw rev 0x%02x 0x%02x "
      "0x%02x 0x%02x\n", data1, data2,
      buf[start + 4], buf[start + 5]);
   break;
  case 149:
   dev_info(dev, "Device reset requested\n");
   break;
  case 128:
   dev_info(dev, "Previous command not supported\n");
   break;
  case 133:
  case 132:
  default:
   dev_info(dev, "Unknown command 0x%02x 0x%02x\n",
     cmd, subcmd);
   break;
  }
  break;
 case 131:
  switch (subcmd) {
  case 142:
   dev_info(dev, "End of signal\n");
   break;
  case 143:
   dev_info(dev, "Ping\n");
   break;
  case 137:
   dev_info(dev, "Resp to 9f 05 of 0x%02x 0x%02x\n",
     data1, data2);
   break;
  case 141:
   dev_info(dev, "%s carrier mode and freq of "
     "0x%02x 0x%02x\n", inout, data1, data2);
   break;
  case 148:
   dev_info(dev, "Get carrier mode and freq\n");
   break;
  case 138:
   dev_info(dev, "%s transmit blaster mask of 0x%02x\n",
     inout, data1);
   break;
  case 139:

   dev_info(dev, "%s receive timeout of %d ms\n",
     inout, ((data1 << 8) | data2) / 2);
   break;
  case 145:
   dev_info(dev, "Get receive timeout\n");
   break;
  case 144:
   dev_info(dev, "Get transmit blaster mask\n");
   break;
  case 140:
   dev_info(dev, "%s %s-range receive sensor in use\n",
     inout, data1 == 0x02 ? "short" : "long");
   break;
  case 146:

   if (out)
    dev_info(dev, "Get receive sensor\n");
   else if (ir->learning_enabled)
    dev_info(dev, "RX pulse count: %d\n",
      ((data1 << 8) | data2));
   break;
  case 128:
   dev_info(dev, "Error! Hardware is likely wedged...\n");
   break;
  case 136:
  case 135:
  case 134:
  default:
   dev_info(dev, "Unknown command 0x%02x 0x%02x\n",
     cmd, subcmd);
   break;
  }
  break;
 default:
  break;
 }

 if (cmd == MCE_IRDATA_TRAILER)
  dev_info(dev, "End of raw IR data\n");
 else if ((cmd != 131) &&
   ((cmd & MCE_COMMAND_MASK) == MCE_COMMAND_IRDATA))
  dev_info(dev, "Raw IR data, %d pulse/space samples\n", ir->rem);
}
