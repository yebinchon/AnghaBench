
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u08; } ;
struct hwsq_ucode {int reg; int val; int data; TYPE_1__ ptr; } ;



__attribute__((used)) static inline void
hwsq_init(struct hwsq_ucode *hwsq)
{
 hwsq->ptr.u08 = hwsq->data;
 hwsq->reg = 0xffffffff;
 hwsq->val = 0xffffffff;
}
