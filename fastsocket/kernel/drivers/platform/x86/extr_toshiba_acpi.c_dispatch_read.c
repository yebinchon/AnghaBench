
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {char* (* read_func ) (char*) ;} ;
typedef TYPE_1__ ProcItem ;


 char* stub1 (char*) ;

__attribute__((used)) static int
dispatch_read(char *page, char **start, off_t off, int count, int *eof,
       ProcItem * item)
{
 char *p = page;
 int len;

 if (off == 0)
  p = item->read_func(p);


 len = (p - page);
 if (len <= off + count)
  *eof = 1;
 *start = page + off;
 len -= off;
 if (len > count)
  len = count;
 if (len < 0)
  len = 0;
 return len;
}
