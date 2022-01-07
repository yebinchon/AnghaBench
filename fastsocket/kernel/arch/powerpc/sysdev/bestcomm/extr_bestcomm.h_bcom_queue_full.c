
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {scalar_t__ outdex; } ;


 scalar_t__ _bcom_next_index (struct bcom_task*) ;

__attribute__((used)) static inline int
bcom_queue_full(struct bcom_task *tsk)
{
 return tsk->outdex == _bcom_next_index(tsk);
}
