
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int minor; } ;
struct logger_log {TYPE_1__ misc; } ;


 struct logger_log log_events ;
 struct logger_log log_main ;
 struct logger_log log_radio ;

__attribute__((used)) static struct logger_log *get_log_from_minor(int minor)
{
 if (log_main.misc.minor == minor)
  return &log_main;
 if (log_events.misc.minor == minor)
  return &log_events;
 if (log_radio.misc.minor == minor)
  return &log_radio;
 return ((void*)0);
}
