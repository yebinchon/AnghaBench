
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mm; int personality; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_4__ {int flags; } ;


 int MMF_COMPAT ;
 int TIF_IA32 ;
 int TS_COMPAT ;
 TYPE_3__* current ;
 TYPE_2__* current_thread_info () ;
 int force_personality32 ;
 int set_bit (int ,int *) ;
 int set_thread_flag (int ) ;

void set_personality_ia32(void)
{



 set_thread_flag(TIF_IA32);
 current->personality |= force_personality32;


 set_bit(MMF_COMPAT, &current->mm->flags);


 current_thread_info()->status |= TS_COMPAT;
}
