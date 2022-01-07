
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int buf_lock; } ;


 int PDEBUG (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov51x_do_dealloc (struct usb_ov511*) ;

__attribute__((used)) static void
ov51x_dealloc(struct usb_ov511 *ov)
{
 PDEBUG(4, "entered");
 mutex_lock(&ov->buf_lock);
 ov51x_do_dealloc(ov);
 mutex_unlock(&ov->buf_lock);
 PDEBUG(4, "leaving");
}
