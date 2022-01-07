
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {scalar_t__ MonitoringAlertMode; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_ControllerCount ;
 TYPE_1__** DAC960_Controllers ;
 int seq_puts (struct seq_file*,unsigned char*) ;

__attribute__((used)) static int dac960_proc_show(struct seq_file *m, void *v)
{
  unsigned char *StatusMessage = "OK\n";
  int ControllerNumber;
  for (ControllerNumber = 0;
       ControllerNumber < DAC960_ControllerCount;
       ControllerNumber++)
    {
      DAC960_Controller_T *Controller = DAC960_Controllers[ControllerNumber];
      if (Controller == ((void*)0)) continue;
      if (Controller->MonitoringAlertMode)
 {
   StatusMessage = "ALERT\n";
   break;
 }
    }
  seq_puts(m, StatusMessage);
  return 0;
}
