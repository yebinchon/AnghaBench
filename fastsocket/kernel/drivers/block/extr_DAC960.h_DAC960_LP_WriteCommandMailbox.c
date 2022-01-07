
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Words; } ;
typedef TYPE_1__ DAC960_V2_CommandMailbox_T ;


 int mb () ;
 int memcpy (int *,int *,int) ;
 int wmb () ;

__attribute__((used)) static inline
void DAC960_LP_WriteCommandMailbox(DAC960_V2_CommandMailbox_T
         *MemoryCommandMailbox,
       DAC960_V2_CommandMailbox_T
         *CommandMailbox)
{
  memcpy(&MemoryCommandMailbox->Words[1], &CommandMailbox->Words[1],
  sizeof(DAC960_V2_CommandMailbox_T) - sizeof(unsigned int));
  wmb();
  MemoryCommandMailbox->Words[0] = CommandMailbox->Words[0];
  mb();
}
