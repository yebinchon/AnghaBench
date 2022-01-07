
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {unsigned int line_pos; char* buffer; size_t head; int flags; int cdev; int count; } ;


 int RAW3215_BUFFER_SIZE ;
 int RAW3215_WORKING ;
 unsigned int TAB_STOP_SIZE ;
 scalar_t__* _ascebc ;
 int get_ccwdev_lock (int ) ;
 int raw3215_make_room (struct raw3215_info*,unsigned int) ;
 int raw3215_mk_write_req (struct raw3215_info*) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void raw3215_putchar(struct raw3215_info *raw, unsigned char ch)
{
 unsigned long flags;
 unsigned int length, i;

 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 if (ch == '\t') {
  length = TAB_STOP_SIZE - (raw->line_pos%TAB_STOP_SIZE);
  raw->line_pos += length;
  ch = ' ';
 } else if (ch == '\n') {
  length = 1;
  raw->line_pos = 0;
 } else {
  length = 1;
  raw->line_pos++;
 }
 raw3215_make_room(raw, length);

 for (i = 0; i < length; i++) {
  raw->buffer[raw->head] = (char) _ascebc[(int) ch];
  raw->head = (raw->head + 1) & (RAW3215_BUFFER_SIZE - 1);
  raw->count++;
 }
 if (!(raw->flags & RAW3215_WORKING)) {
  raw3215_mk_write_req(raw);

  raw3215_try_io(raw);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
}
