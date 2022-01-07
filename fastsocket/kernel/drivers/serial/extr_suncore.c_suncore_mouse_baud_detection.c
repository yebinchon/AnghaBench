
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int suncore_mouse_baud_detection(unsigned char ch, int is_break)
{
 static int mouse_got_break = 0;
 static int ctr = 0;

 if (is_break) {



  if (mouse_got_break && ctr < 8)
   return 1;


  ctr = 0;
  mouse_got_break = 1;
  return 2;
 }
 if (mouse_got_break) {
  ctr++;
  if (ch == 0x87) {

   mouse_got_break = 0;
  }
  return 1;
 }
 return 0;
}
