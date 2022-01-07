
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isowbuf_t {int write; int writesem; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline int isowbuf_donewrite(struct isowbuf_t *iwb)
{
 int write = iwb->write;
 atomic_inc(&iwb->writesem);
 return write;
}
