
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {scalar_t__ index; scalar_t__ outdex; } ;



__attribute__((used)) static inline int
bcom_queue_empty(struct bcom_task *tsk)
{
 return tsk->index == tsk->outdex;
}
