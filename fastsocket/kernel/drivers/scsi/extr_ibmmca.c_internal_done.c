
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Status; } ;
struct TYPE_5__ {TYPE_1__ SCp; } ;
typedef TYPE_2__ Scsi_Cmnd ;



__attribute__((used)) static void internal_done(Scsi_Cmnd * cmd)
{
 cmd->SCp.Status++;
 return;
}
