
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ov511 {int buf_state; TYPE_2__* frame; TYPE_1__* sbuf; int * tempfbuf; int * rawfbuf; int * fbuf; int maxheight; int maxwidth; } ;
struct TYPE_4__ {int * compbuf; int * tempdata; int * rawdata; int * data; } ;
struct TYPE_3__ {int * data; } ;


 int BUF_NOT_ALLOCATED ;
 int MAX_DATA_SIZE (int ,int ) ;
 int OV511_NUMFRAMES ;
 int OV511_NUMSBUF ;
 int PDEBUG (int,char*) ;
 int free_page (unsigned long) ;
 int kfree (int *) ;
 int rvfree (int *,int) ;
 int vfree (int *) ;

__attribute__((used)) static void
ov51x_do_dealloc(struct usb_ov511 *ov)
{
 int i;
 PDEBUG(4, "entered");

 if (ov->fbuf) {
  rvfree(ov->fbuf, OV511_NUMFRAMES
         * MAX_DATA_SIZE(ov->maxwidth, ov->maxheight));
  ov->fbuf = ((void*)0);
 }

 vfree(ov->rawfbuf);
 ov->rawfbuf = ((void*)0);

 vfree(ov->tempfbuf);
 ov->tempfbuf = ((void*)0);

 for (i = 0; i < OV511_NUMSBUF; i++) {
  kfree(ov->sbuf[i].data);
  ov->sbuf[i].data = ((void*)0);
 }

 for (i = 0; i < OV511_NUMFRAMES; i++) {
  ov->frame[i].data = ((void*)0);
  ov->frame[i].rawdata = ((void*)0);
  ov->frame[i].tempdata = ((void*)0);
  if (ov->frame[i].compbuf) {
   free_page((unsigned long) ov->frame[i].compbuf);
   ov->frame[i].compbuf = ((void*)0);
  }
 }

 PDEBUG(4, "buffer memory deallocated");
 ov->buf_state = BUF_NOT_ALLOCATED;
 PDEBUG(4, "leaving");
}
