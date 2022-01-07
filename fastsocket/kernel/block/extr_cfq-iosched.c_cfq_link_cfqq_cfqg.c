
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {struct cfq_group* cfqg; } ;
struct cfq_group {int dummy; } ;



__attribute__((used)) static inline void
cfq_link_cfqq_cfqg(struct cfq_queue *cfqq, struct cfq_group *cfqg) {
 cfqq->cfqg = cfqg;
}
