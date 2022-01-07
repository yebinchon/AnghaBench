
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct il_spectrum_notification {int dummy; } ;
struct il_priv {int measurement_status; int lock; int measure_report; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int measure_report ;


 int MEASUREMENT_READY ;
 int PAGE_SIZE ;
 struct il_priv* dev_get_drvdata (struct device*) ;
 int hex_dump_to_buffer (int *,int,int,int,char*,int,int) ;
 int memcpy (struct il_spectrum_notification*,int *,int) ;
 int min (int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t
il3945_show_measurement(struct device *d, struct device_attribute *attr,
   char *buf)
{
 struct il_priv *il = dev_get_drvdata(d);
 struct il_spectrum_notification measure_report;
 u32 size = sizeof(measure_report), len = 0, ofs = 0;
 u8 *data = (u8 *) &measure_report;
 unsigned long flags;

 spin_lock_irqsave(&il->lock, flags);
 if (!(il->measurement_status & MEASUREMENT_READY)) {
  spin_unlock_irqrestore(&il->lock, flags);
  return 0;
 }
 memcpy(&measure_report, &il->measure_report, size);
 il->measurement_status = 0;
 spin_unlock_irqrestore(&il->lock, flags);

 while (size && PAGE_SIZE - len) {
  hex_dump_to_buffer(data + ofs, size, 16, 1, buf + len,
       PAGE_SIZE - len, 1);
  len = strlen(buf);
  if (PAGE_SIZE - len)
   buf[len++] = '\n';

  ofs += 16;
  size -= min(size, 16U);
 }

 return len;
}
