
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdb {int size; int start; int wptr; int rptr; scalar_t__ end; } ;
struct tx_map {int dummy; } ;


 int ENOMEM ;
 int FIFO_SIZE ;
 int vmalloc (int) ;

__attribute__((used)) static int bdx_tx_db_init(struct txdb *d, int sz_type)
{
 int memsz = FIFO_SIZE * (1 << (sz_type + 1));

 d->start = vmalloc(memsz);
 if (!d->start)
  return -ENOMEM;






 d->size = memsz / sizeof(struct tx_map) - 1;
 d->end = d->start + d->size + 1;


 d->rptr = d->start;
 d->wptr = d->start;

 return 0;
}
