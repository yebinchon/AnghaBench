
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrunkBinLogReader ;


 int ENOENT ;
 int trunk_binlog_do_line_read (int *,char*,int const,int*) ;
 int trunk_binlog_preread (int *) ;

__attribute__((used)) static int trunk_binlog_read_line(TrunkBinLogReader *pReader, char *line, const int line_size, int *line_length)

{
 int result;

 result = trunk_binlog_do_line_read(pReader, line, line_size, line_length);

 if (result != ENOENT)
 {
  return result;
 }

 result = trunk_binlog_preread(pReader);
 if (result != 0)
 {
  return result;
 }

 return trunk_binlog_do_line_read(pReader, line, line_size, line_length);

}
