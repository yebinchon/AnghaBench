
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int jiffies ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int proc_read_jiffies(char *page, char **start,
        off_t off, int count,
        int *eof, void *data)
{
 int len;

 len = sprintf(page, "jiffies = %ld\n",
                      jiffies);

 return len;
}
