
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmnd; } ;
typedef TYPE_1__ Scsi_Cmnd ;


 int print_commandk (int ) ;

__attribute__((used)) static void show_command(Scsi_Cmnd *SCpnt)
{
 print_commandk(SCpnt->cmnd);
}
