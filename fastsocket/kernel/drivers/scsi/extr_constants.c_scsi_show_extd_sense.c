
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char const*,...) ;
 char* scsi_extd_sense_format (unsigned char,unsigned char) ;
 scalar_t__ strstr (char const*,char*) ;

void
scsi_show_extd_sense(unsigned char asc, unsigned char ascq)
{
        const char *extd_sense_fmt = scsi_extd_sense_format(asc, ascq);

 if (extd_sense_fmt) {
  if (strstr(extd_sense_fmt, "%x")) {
   printk("Add. Sense: ");
   printk(extd_sense_fmt, ascq);
  } else
   printk("Add. Sense: %s", extd_sense_fmt);
 } else {
  if (asc >= 0x80)
   printk("<<vendor>> ASC=0x%x ASCQ=0x%x", asc,
          ascq);
  if (ascq >= 0x80)
   printk("ASC=0x%x <<vendor>> ASCQ=0x%x", asc,
          ascq);
  else
   printk("ASC=0x%x ASCQ=0x%x", asc, ascq);
 }

 printk("\n");
}
