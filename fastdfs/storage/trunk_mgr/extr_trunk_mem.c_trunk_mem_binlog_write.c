
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
typedef TYPE_2__ FDFSTrunkFullInfo ;


 char const TRUNK_OP_TYPE_ADD_SPACE ;
 char const TRUNK_OP_TYPE_DEL_SPACE ;
 int g_trunk_total_free_space ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int trunk_binlog_write (int const,char const,TYPE_2__ const*) ;
 int trunk_file_lock ;

__attribute__((used)) static int trunk_mem_binlog_write(const int timestamp, const char op_type, const FDFSTrunkFullInfo *pTrunk)

{
 pthread_mutex_lock(&trunk_file_lock);
 if (op_type == TRUNK_OP_TYPE_ADD_SPACE)
 {
  g_trunk_total_free_space += pTrunk->file.size;
 }
 else if (op_type == TRUNK_OP_TYPE_DEL_SPACE)
 {
  g_trunk_total_free_space -= pTrunk->file.size;
 }
 pthread_mutex_unlock(&trunk_file_lock);

 return trunk_binlog_write(timestamp, op_type, pTrunk);
}
