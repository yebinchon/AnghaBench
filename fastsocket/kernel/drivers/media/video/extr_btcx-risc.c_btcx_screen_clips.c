
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int left; int height; int width; int top; } ;
struct TYPE_2__ {int left; int top; int width; int height; } ;
struct v4l2_clip {TYPE_1__ c; } ;



int
btcx_screen_clips(int swidth, int sheight, struct v4l2_rect *win,
    struct v4l2_clip *clips, unsigned int n)
{
 if (win->left < 0) {

  clips[n].c.left = 0;
  clips[n].c.top = 0;
  clips[n].c.width = -win->left;
  clips[n].c.height = win->height;
  n++;
 }
 if (win->left + win->width > swidth) {

  clips[n].c.left = swidth - win->left;
  clips[n].c.top = 0;
  clips[n].c.width = win->width - clips[n].c.left;
  clips[n].c.height = win->height;
  n++;
 }
 if (win->top < 0) {

  clips[n].c.left = 0;
  clips[n].c.top = 0;
  clips[n].c.width = win->width;
  clips[n].c.height = -win->top;
  n++;
 }
 if (win->top + win->height > sheight) {

  clips[n].c.left = 0;
  clips[n].c.top = sheight - win->top;
  clips[n].c.width = win->width;
  clips[n].c.height = win->height - clips[n].c.top;
  n++;
 }
 return n;
}
