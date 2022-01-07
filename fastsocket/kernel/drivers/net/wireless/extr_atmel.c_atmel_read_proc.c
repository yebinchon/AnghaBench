
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_private {int dummy; } ;
typedef int off_t ;


 int atmel_proc_output (char*,struct atmel_private*) ;

__attribute__((used)) static int atmel_read_proc(char *page, char **start, off_t off,
      int count, int *eof, void *data)
{
 struct atmel_private *priv = data;
 int len = atmel_proc_output (page, priv);
 if (len <= off+count)
  *eof = 1;
 *start = page + off;
 len -= off;
 if (len > count)
  len = count;
 if (len < 0)
  len = 0;
 return len;
}
