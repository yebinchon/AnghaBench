
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int CombinedStatusBuffer; int InitialStatusLength; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int dac960_initial_status_proc_show(struct seq_file *m, void *v)
{
 DAC960_Controller_T *Controller = (DAC960_Controller_T *)m->private;
 seq_printf(m, "%.*s", Controller->InitialStatusLength, Controller->CombinedStatusBuffer);
 return 0;
}
