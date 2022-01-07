
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clean; } ;
struct vmcb {TYPE_1__ control; } ;



__attribute__((used)) static inline void mark_dirty(struct vmcb *vmcb, int bit)
{
 vmcb->control.clean &= ~(1 << bit);
}
