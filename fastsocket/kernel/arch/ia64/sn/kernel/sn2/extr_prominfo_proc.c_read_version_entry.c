
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int dump_version (char*,unsigned long) ;
 int proc_calc_metrics (char*,char**,int ,int,int*,int) ;

__attribute__((used)) static int
read_version_entry(char *page, char **start, off_t off, int count, int *eof,
     void *data)
{
 int len;


 len = dump_version(page, (unsigned long)data);
 len = proc_calc_metrics(page, start, off, count, eof, len);
 return len;
}
