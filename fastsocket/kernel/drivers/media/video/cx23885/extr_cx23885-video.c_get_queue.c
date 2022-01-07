
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct cx23885_fh {int type; struct videobuf_queue vbiq; struct videobuf_queue vidq; } ;


 int BUG () ;



__attribute__((used)) static struct videobuf_queue *get_queue(struct cx23885_fh *fh)
{
 switch (fh->type) {
 case 128:
  return &fh->vidq;
 case 129:
  return &fh->vbiq;
 default:
  BUG();
  return ((void*)0);
 }
}
