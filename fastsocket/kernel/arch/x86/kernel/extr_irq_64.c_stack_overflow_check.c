
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct thread_info {int dummy; } ;
struct pt_regs {scalar_t__ sp; } ;
struct TYPE_3__ {int comm; } ;


 scalar_t__ THREAD_SIZE ;
 int WARN_ONCE (int,char*,int ,scalar_t__,scalar_t__) ;
 TYPE_1__* current ;
 int task_stack_page (TYPE_1__*) ;

__attribute__((used)) static inline void stack_overflow_check(struct pt_regs *regs)
{
}
