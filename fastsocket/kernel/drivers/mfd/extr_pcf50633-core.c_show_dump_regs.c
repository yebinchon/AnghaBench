
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int dump ;







 struct pcf50633* dev_get_drvdata (struct device*) ;
 int hex_dump_to_buffer (int*,int,int,int,char*,int,int ) ;
 int pcf50633_reg_read (struct pcf50633*,int) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t show_dump_regs(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct pcf50633 *pcf = dev_get_drvdata(dev);
 u8 dump[16];
 int n, n1, idx = 0;
 char *buf1 = buf;
 static u8 address_no_read[] = {
  132,
  131,
  130,
  129,
  128,
  0
 };

 for (n = 0; n < 256; n += sizeof(dump)) {
  for (n1 = 0; n1 < sizeof(dump); n1++)
   if (n == address_no_read[idx]) {
    idx++;
    dump[n1] = 0x00;
   } else
    dump[n1] = pcf50633_reg_read(pcf, n + n1);

  hex_dump_to_buffer(dump, sizeof(dump), 16, 1, buf1, 128, 0);
  buf1 += strlen(buf1);
  *buf1++ = '\n';
  *buf1 = '\0';
 }

 return buf1 - buf;
}
