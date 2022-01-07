
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int convert_arg; } ;


 int TIMER_BASE ;

__attribute__((used)) static uint32_t ai_convert_counter_6xxx(const struct comedi_device *dev,
     const struct comedi_cmd *cmd)
{

 return cmd->convert_arg / TIMER_BASE - 3;
}
