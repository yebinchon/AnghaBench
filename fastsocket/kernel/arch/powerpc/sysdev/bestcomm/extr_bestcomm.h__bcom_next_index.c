
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {scalar_t__ index; scalar_t__ num_bd; } ;



__attribute__((used)) static inline int
_bcom_next_index(struct bcom_task *tsk)
{
 return ((tsk->index + 1) == tsk->num_bd) ? 0 : tsk->index + 1;
}
