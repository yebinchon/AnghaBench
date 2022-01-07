
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * buffer; } ;
struct TYPE_6__ {scalar_t__ binlog_fd; TYPE_1__ binlog_buff; } ;
typedef TYPE_2__ StorageBinLogReader ;


 int recovery_reader_init (char const*,TYPE_2__*) ;

__attribute__((used)) static int recovery_reader_check_init(const char *pBasePath, StorageBinLogReader *pReader)

{
    if (pReader->binlog_fd >= 0 && pReader->binlog_buff.buffer != ((void*)0))
    {
        return 0;
    }

    return recovery_reader_init(pBasePath, pReader);
}
