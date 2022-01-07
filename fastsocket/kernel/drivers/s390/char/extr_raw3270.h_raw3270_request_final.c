
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {int list; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline int
raw3270_request_final(struct raw3270_request *rq)
{
 return list_empty(&rq->list);
}
