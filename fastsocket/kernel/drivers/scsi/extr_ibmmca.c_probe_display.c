
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_DISP ;
 scalar_t__ MOD95_LED_PORT ;
 int display_mode ;
 int outb (char,scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int probe_display(int what)
{
 static int rotator = 0;
 const char rotor[] = "|/-\\";

 if (!(display_mode & LED_DISP))
  return 0;
 if (!what) {
  outl(0x20202020, MOD95_LED_PORT);
  outl(0x20202020, MOD95_LED_PORT + 4);
 } else {
  outb('S', MOD95_LED_PORT + 7);
  outb('C', MOD95_LED_PORT + 6);
  outb('S', MOD95_LED_PORT + 5);
  outb('I', MOD95_LED_PORT + 4);
  outb('i', MOD95_LED_PORT + 3);
  outb('n', MOD95_LED_PORT + 2);
  outb('i', MOD95_LED_PORT + 1);
  outb((char) (rotor[rotator]), MOD95_LED_PORT);
  rotator++;
  if (rotator > 3)
   rotator = 0;
 }
 return 0;
}
