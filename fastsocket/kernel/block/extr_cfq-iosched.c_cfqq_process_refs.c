
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int* allocated; int ref; } ;


 int BUG_ON (int) ;
 size_t READ ;
 size_t WRITE ;

__attribute__((used)) static int cfqq_process_refs(struct cfq_queue *cfqq)
{
 int process_refs, io_refs;

 io_refs = cfqq->allocated[READ] + cfqq->allocated[WRITE];
 process_refs = cfqq->ref - io_refs;
 BUG_ON(process_refs < 0);
 return process_refs;
}
