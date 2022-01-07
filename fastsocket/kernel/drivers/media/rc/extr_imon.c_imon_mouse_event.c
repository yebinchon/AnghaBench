
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct imon_context {int product; scalar_t__ kc; scalar_t__ last_keycode; int kc_lock; int idev; int dev; } ;


 int BTN_LEFT ;
 int BTN_RIGHT ;
 scalar_t__ KEY_CHANNELDOWN ;
 scalar_t__ KEY_CHANNELUP ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int dev_dbg (int ,char*) ;
 int input_report_key (int ,int ,unsigned char) ;
 int input_report_rel (int ,int ,char) ;
 int input_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool imon_mouse_event(struct imon_context *ictx,
        unsigned char *buf, int len)
{
 char rel_x = 0x00, rel_y = 0x00;
 u8 right_shift = 1;
 bool mouse_input = 1;
 int dir = 0;
 unsigned long flags;

 spin_lock_irqsave(&ictx->kc_lock, flags);


 if (ictx->product != 0xffdc && (buf[0] & 0x01) && len == 5) {
  rel_x = buf[2];
  rel_y = buf[3];
  right_shift = 1;

 } else if (ictx->product == 0xffdc && (buf[0] & 0x40) &&
   !((buf[1] & 0x01) || ((buf[1] >> 2) & 0x01))) {
  rel_x = (buf[1] & 0x08) | (buf[1] & 0x10) >> 2 |
   (buf[1] & 0x20) >> 4 | (buf[1] & 0x40) >> 6;
  if (buf[0] & 0x02)
   rel_x |= ~0x0f;
  rel_x = rel_x + rel_x / 2;
  rel_y = (buf[2] & 0x08) | (buf[2] & 0x10) >> 2 |
   (buf[2] & 0x20) >> 4 | (buf[2] & 0x40) >> 6;
  if (buf[0] & 0x01)
   rel_y |= ~0x0f;
  rel_y = rel_y + rel_y / 2;
  right_shift = 2;

 } else if (ictx->product == 0xffdc && (buf[0] == 0x68)) {
  right_shift = 2;

 } else if (ictx->kc == KEY_CHANNELUP && (buf[2] & 0x40) != 0x40) {
  dir = 1;
 } else if (ictx->kc == KEY_CHANNELDOWN && (buf[2] & 0x40) != 0x40) {
  dir = -1;
 } else
  mouse_input = 0;

 spin_unlock_irqrestore(&ictx->kc_lock, flags);

 if (mouse_input) {
  dev_dbg(ictx->dev, "sending mouse data via input subsystem\n");

  if (dir) {
   input_report_rel(ictx->idev, REL_WHEEL, dir);
  } else if (rel_x || rel_y) {
   input_report_rel(ictx->idev, REL_X, rel_x);
   input_report_rel(ictx->idev, REL_Y, rel_y);
  } else {
   input_report_key(ictx->idev, BTN_LEFT, buf[1] & 0x1);
   input_report_key(ictx->idev, BTN_RIGHT,
      buf[1] >> right_shift & 0x1);
  }
  input_sync(ictx->idev);
  spin_lock_irqsave(&ictx->kc_lock, flags);
  ictx->last_keycode = ictx->kc;
  spin_unlock_irqrestore(&ictx->kc_lock, flags);
 }

 return mouse_input;
}
