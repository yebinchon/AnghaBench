
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int binlog_index; } ;
typedef TYPE_1__ StorageBinLogReader ;


 char* get_binlog_readable_filename_ex (int ,char*) ;

__attribute__((used)) static inline char *get_binlog_readable_filename(const void *pArg,
  char *full_filename)
{
    return get_binlog_readable_filename_ex(
            ((const StorageBinLogReader *)pArg)->binlog_index,
            full_filename);
}
