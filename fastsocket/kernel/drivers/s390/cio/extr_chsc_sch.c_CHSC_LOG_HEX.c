
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_size; } ;


 TYPE_1__* chsc_debug_log_id ;
 int debug_event (TYPE_1__*,int,void*,int) ;

__attribute__((used)) static void CHSC_LOG_HEX(int level, void *data, int length)
{
 while (length > 0) {
  debug_event(chsc_debug_log_id, level, data, length);
  length -= chsc_debug_log_id->buf_size;
  data += chsc_debug_log_id->buf_size;
 }
}
