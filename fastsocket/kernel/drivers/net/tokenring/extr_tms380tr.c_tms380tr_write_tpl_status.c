
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int Status; } ;
typedef TYPE_1__ TPL ;



__attribute__((used)) static void tms380tr_write_tpl_status(TPL *tpl, unsigned int Status)
{
 tpl->Status = Status;
}
