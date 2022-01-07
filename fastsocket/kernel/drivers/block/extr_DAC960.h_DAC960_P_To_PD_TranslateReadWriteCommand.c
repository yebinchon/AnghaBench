
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* Bytes; } ;
typedef TYPE_1__ DAC960_V1_CommandMailbox_T ;



__attribute__((used)) static inline
void DAC960_P_To_PD_TranslateReadWriteCommand(DAC960_V1_CommandMailbox_T
           *CommandMailbox)
{
  int LogicalDriveNumber = CommandMailbox->Bytes[7];
  CommandMailbox->Bytes[7] = CommandMailbox->Bytes[3] >> 6;
  CommandMailbox->Bytes[3] &= 0x7;
  CommandMailbox->Bytes[3] |= LogicalDriveNumber << 3;
}
