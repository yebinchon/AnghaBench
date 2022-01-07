
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH_SIZE ;
 int recovery_get_binlog_filename (char const*,char*) ;
 int writeToFile (char*,char*,int ) ;

__attribute__((used)) static int recovery_init_binlog_file(const char *pBasePath)
{
 char full_binlog_filename[MAX_PATH_SIZE];
 char buff[1];

 *buff = '\0';
 recovery_get_binlog_filename(pBasePath, full_binlog_filename);
 return writeToFile(full_binlog_filename, buff, 0);
}
