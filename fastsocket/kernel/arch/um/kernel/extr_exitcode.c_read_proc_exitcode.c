
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int sprintf (char*,char*,int) ;
 int uml_exitcode ;

__attribute__((used)) static int read_proc_exitcode(char *page, char **start, off_t off,
         int count, int *eof, void *data)
{
 int len, val;





 val = uml_exitcode;
 len = sprintf(page, "%d\n", val);
 len -= off;
 if (len <= off+count)
  *eof = 1;
 *start = page + off;
 if (len > count)
  len = count;
 if (len < 0)
  len = 0;
 return len;
}
