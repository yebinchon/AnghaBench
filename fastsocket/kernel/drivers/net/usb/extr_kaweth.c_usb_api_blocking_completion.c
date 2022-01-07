
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_api_data {int done; int wqh; } ;
struct urb {scalar_t__ context; } ;


 int wake_up (int *) ;

__attribute__((used)) static void usb_api_blocking_completion(struct urb *urb)
{
        struct usb_api_data *awd = (struct usb_api_data *)urb->context;

 awd->done=1;
 wake_up(&awd->wqh);
}
