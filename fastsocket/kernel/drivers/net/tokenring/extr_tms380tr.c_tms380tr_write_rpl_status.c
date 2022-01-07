
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int Status; } ;
typedef TYPE_1__ RPL ;



__attribute__((used)) static void tms380tr_write_rpl_status(RPL *rpl, unsigned int Status)
{
 rpl->Status = Status;

 return;
}
