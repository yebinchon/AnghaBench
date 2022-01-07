
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_data_t {char* name; char* value; } ;
typedef int off_t ;


 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static int proc_read_foobar(char *page, char **start,
       off_t off, int count,
       int *eof, void *data)
{
 int len;
 struct fb_data_t *fb_data = (struct fb_data_t *)data;


 len = sprintf(page, "%s = '%s'\n",
        fb_data->name, fb_data->value);

 return len;
}
