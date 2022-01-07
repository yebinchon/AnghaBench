
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {int * data; } ;


 int ENOMEM ;
 int dvb_ringbuffer_init (struct dvb_ringbuffer*,void*,int) ;
 int vfree (int *) ;
 void* vmalloc (int) ;

__attribute__((used)) static int ci_ll_init(struct dvb_ringbuffer *cirbuf, struct dvb_ringbuffer *ciwbuf, int size)
{
 struct dvb_ringbuffer *tab[] = { cirbuf, ciwbuf, ((void*)0) }, **p;
 void *data;

 for (p = tab; *p; p++) {
  data = vmalloc(size);
  if (!data) {
   while (p-- != tab) {
    vfree(p[0]->data);
    p[0]->data = ((void*)0);
   }
   return -ENOMEM;
  }
  dvb_ringbuffer_init(*p, data, size);
 }
 return 0;
}
