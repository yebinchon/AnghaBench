
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_2__ {int ledd_status; } ;


 TYPE_1__* hotk ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
proc_read_ledd(char *page, char **start, off_t off, int count, int *eof,
        void *data)
{
 return sprintf(page, "0x%08x\n", hotk->ledd_status);
}
