
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StorageBinLogReader ;


 int ENOENT ;
 int storage_binlog_do_line_read (int *,char*,int const,int*) ;
 int storage_binlog_preread (int *) ;

__attribute__((used)) static int storage_binlog_read_line(StorageBinLogReader *pReader, char *line, const int line_size, int *line_length)

{
 int result;

 result = storage_binlog_do_line_read(pReader, line, line_size, line_length);

 if (result != ENOENT)
 {
  return result;
 }

 result = storage_binlog_preread(pReader);
 if (result != 0)
 {
  return result;
 }

 return storage_binlog_do_line_read(pReader, line, line_size, line_length);

}
