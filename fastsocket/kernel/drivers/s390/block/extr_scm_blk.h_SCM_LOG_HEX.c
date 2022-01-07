
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int level; scalar_t__ buf_size; } ;


 int debug_event (TYPE_1__*,int,void*,int) ;
 TYPE_1__* scm_debug ;

__attribute__((used)) static inline void SCM_LOG_HEX(int level, void *data, int length)
{
 if (level > scm_debug->level)
  return;
 while (length > 0) {
  debug_event(scm_debug, level, data, length);
  length -= scm_debug->buf_size;
  data += scm_debug->buf_size;
 }
}
