
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_cpia {struct framebuf* curbuff; int wq_stream; int present; } ;
struct framebuf {scalar_t__ status; int length; int data; } ;


 int DBG (char*) ;
 scalar_t__ FRAME_EMPTY ;
 scalar_t__ FRAME_READY ;
 int interruptible_sleep_on (int *) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int cpia_usb_streamRead(void *privdata, u8 *frame, int noblock)
{
 struct usb_cpia *ucpia = (struct usb_cpia *) privdata;
 struct framebuf *mybuff;

 if (!ucpia || !ucpia->present)
  return -1;

 if (ucpia->curbuff->status != FRAME_READY)
  interruptible_sleep_on(&ucpia->wq_stream);
 else
  DBG("Frame already waiting!\n");

 mybuff = ucpia->curbuff;

 if (!mybuff)
  return -1;

 if (mybuff->status != FRAME_READY || mybuff->length < 4) {
  DBG("Something went wrong!\n");
  return -1;
 }

 memcpy(frame, mybuff->data, mybuff->length);
 mybuff->status = FRAME_EMPTY;






 return mybuff->length;
}
