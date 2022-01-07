
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct pcbit_dev {int w_busy; int r_busy; int rcv_seq; int send_seq; int unack_seq; int free; scalar_t__ sh_mem; scalar_t__ readptr; scalar_t__ writeptr; int l2_state; struct frame_buf* write_queue; struct frame_buf* read_frame; TYPE_1__ error_recover_timer; } ;
struct frame_buf {scalar_t__ copied; scalar_t__ skb; struct frame_buf* next; } ;


 scalar_t__ BANK2 ;
 scalar_t__ BANK4 ;
 scalar_t__ ERRTIME ;
 int L2_ERROR ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 int dev_kfree_skb (scalar_t__) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int kfree (struct frame_buf*) ;
 int kfree_skb (scalar_t__) ;
 int pcbit_firmware_bug (struct pcbit_dev*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void
pcbit_l2_err_recover(unsigned long data)
{

 struct pcbit_dev *dev;
 struct frame_buf *frame;

 dev = (struct pcbit_dev *) data;

 del_timer(&dev->error_recover_timer);
 if (dev->w_busy || dev->r_busy) {
  init_timer(&dev->error_recover_timer);
  dev->error_recover_timer.expires = jiffies + ERRTIME;
  add_timer(&dev->error_recover_timer);
  return;
 }
 dev->w_busy = dev->r_busy = 1;

 if (dev->read_frame) {
  kfree_skb(dev->read_frame->skb);
  kfree(dev->read_frame);
  dev->read_frame = ((void*)0);
 }
 if (dev->write_queue) {
  frame = dev->write_queue;
  frame->copied = 0;

 }
 dev->rcv_seq = dev->send_seq = dev->unack_seq = 0;
 dev->free = 511;
 dev->l2_state = L2_ERROR;


 pcbit_firmware_bug(dev);

 dev->writeptr = dev->sh_mem;
 dev->readptr = dev->sh_mem + BANK2;

 writeb((0x80U | ((dev->rcv_seq & 0x07) << 3) | (dev->send_seq & 0x07)),
        dev->sh_mem + BANK4);
 dev->w_busy = dev->r_busy = 0;

}
