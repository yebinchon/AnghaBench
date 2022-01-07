
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
typedef TYPE_1__* pbuff_t ;
struct TYPE_7__ {TYPE_1__* transfer_buffer; } ;
struct TYPE_6__ {TYPE_2__* purb; } ;


 int buff_list ;
 int buff_t ;
 int dbg (char*) ;
 int dump_urb (TYPE_2__*) ;
 int kfree (TYPE_1__*) ;
 int list_del (struct list_head*) ;
 TYPE_1__* list_entry (struct list_head*,int ,int ) ;
 int usb_free_urb (TYPE_2__*) ;

__attribute__((used)) static int dabusb_free_queue (struct list_head *q)
{
 struct list_head *tmp;
 struct list_head *p;
 pbuff_t b;

 dbg("dabusb_free_queue");
 for (p = q->next; p != q;) {
  b = list_entry (p, buff_t, buff_list);




  kfree(b->purb->transfer_buffer);
  usb_free_urb(b->purb);
  tmp = p->next;
  list_del (p);
  kfree (b);
  p = tmp;
 }

 return 0;
}
