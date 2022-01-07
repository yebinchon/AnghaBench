
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int personality; TYPE_1__* mm; } ;
struct TYPE_3__ {int flags; } ;


 int MMF_COMPAT ;
 int READ_IMPLIES_EXEC ;
 int TIF_IA32 ;
 int clear_bit (int ,int *) ;
 int clear_thread_flag (int ) ;
 TYPE_2__* current ;

void set_personality_64bit(void)
{



 clear_thread_flag(TIF_IA32);


 clear_bit(MMF_COMPAT, &current->mm->flags);





 current->personality &= ~READ_IMPLIES_EXEC;
}
