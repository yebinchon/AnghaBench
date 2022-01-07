
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int proc_ide_read_media(char *page, char **start, off_t off, int count,
          int *eof, void *data)
{
 int len;

 strcpy(page, "disk\n");
 len = strlen("disk\n");
 len -= off;
 if (len < count){
  *eof = 1;
  if (len <= 0) return 0;
 }
 else len = count;
 *start = page + off;
 return len;
}
