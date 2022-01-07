
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct saa7134_fh {int type; struct videobuf_queue vbi; struct videobuf_queue cap; } ;


 int BUG () ;



__attribute__((used)) static struct videobuf_queue* saa7134_queue(struct saa7134_fh *fh)
{
 struct videobuf_queue* q = ((void*)0);

 switch (fh->type) {
 case 128:
  q = &fh->cap;
  break;
 case 129:
  q = &fh->vbi;
  break;
 default:
  BUG();
 }
 return q;
}
