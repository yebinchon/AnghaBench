
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int get_using_sysemu () ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int proc_read_sysemu(char *buf, char **start, off_t offset, int size,int *eof, void *data)
{
 if (snprintf(buf, size, "%d\n", get_using_sysemu()) < size)

  *eof = 1;

 return strlen(buf);
}
