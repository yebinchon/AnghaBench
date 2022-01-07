
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 unsigned char I8042_STR_AUXDATA ;
 int dbg (char*) ;
 scalar_t__ i8042_platform_filter (unsigned char,unsigned char,struct serio*) ;
 int i8042_suppress_kbd_ack ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool i8042_filter(unsigned char data, unsigned char str,
    struct serio *serio)
{
 if (unlikely(i8042_suppress_kbd_ack)) {
  if ((~str & I8042_STR_AUXDATA) &&
      (data == 0xfa || data == 0xfe)) {
   i8042_suppress_kbd_ack--;
   dbg("Extra keyboard ACK - filtered out\n");
   return 1;
  }
 }

 if (i8042_platform_filter && i8042_platform_filter(data, str, serio)) {
  dbg("Filtered out by platfrom filter\n");
  return 1;
 }

 return 0;
}
