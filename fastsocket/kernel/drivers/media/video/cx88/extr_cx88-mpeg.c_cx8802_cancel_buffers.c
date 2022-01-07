
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_dmaqueue {int timeout; } ;
struct cx8802_dev {struct cx88_dmaqueue mpegq; } ;


 int cx8802_stop_dma (struct cx8802_dev*) ;
 int del_timer_sync (int *) ;
 int do_cancel_buffers (struct cx8802_dev*,char*,int ) ;
 int dprintk (int,char*) ;

void cx8802_cancel_buffers(struct cx8802_dev *dev)
{
 struct cx88_dmaqueue *q = &dev->mpegq;

 dprintk( 1, "cx8802_cancel_buffers" );
 del_timer_sync(&q->timeout);
 cx8802_stop_dma(dev);
 do_cancel_buffers(dev,"cancel",0);
}
