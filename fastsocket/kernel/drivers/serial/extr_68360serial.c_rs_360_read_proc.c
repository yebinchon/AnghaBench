
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int NR_PORTS ;
 scalar_t__ line_info (char*,int *) ;
 int * rs_table ;
 char* serial_version ;
 scalar_t__ sprintf (char*,char*,char*) ;

int rs_360_read_proc(char *page, char **start, off_t off, int count,
   int *eof, void *data)
{
 int i, len = 0;
 off_t begin = 0;

 len += sprintf(page, "serinfo:1.0 driver:%s\n", serial_version);
 for (i = 0; i < NR_PORTS && len < 4000; i++) {
  len += line_info(page + len, &rs_table[i]);
  if (len+begin > off+count)
   goto done;
  if (len+begin < off) {
   begin += len;
   len = 0;
  }
 }
 *eof = 1;
done:
 if (off >= len+begin)
  return 0;
 *start = page + (begin-off);
 return ((count < begin+len-off) ? count : begin+len-off);
}
