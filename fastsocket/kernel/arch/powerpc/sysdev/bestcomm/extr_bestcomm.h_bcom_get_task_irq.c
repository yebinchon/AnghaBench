
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int irq; } ;



__attribute__((used)) static inline int
bcom_get_task_irq(struct bcom_task *tsk) {
 return tsk->irq;
}
