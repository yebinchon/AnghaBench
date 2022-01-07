
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ orig_video_mode; int orig_x; int orig_y; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 int cols ;
 int lines ;
 int outb (int,scalar_t__) ;
 TYPE_2__* real_mode ;
 int scroll () ;
 char* vidmem ;
 scalar_t__ vidport ;

__attribute__((used)) static void __putstr(int error, const char *s)
{
 int x, y, pos;
 char c;


 if (!error)
  return;
 x = real_mode->screen_info.orig_x;
 y = real_mode->screen_info.orig_y;

 while ((c = *s++) != '\0') {
  if (c == '\n') {
   x = 0;
   if (++y >= lines) {
    scroll();
    y--;
   }
  } else {
   vidmem[(x + cols * y) * 2] = c;
   if (++x >= cols) {
    x = 0;
    if (++y >= lines) {
     scroll();
     y--;
    }
   }
  }
 }

 real_mode->screen_info.orig_x = x;
 real_mode->screen_info.orig_y = y;

 pos = (x + cols * y) * 2;
 outb(14, vidport);
 outb(0xff & (pos >> 9), vidport+1);
 outb(15, vidport);
 outb(0xff & (pos >> 1), vidport+1);
}
