
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvc_mutex ;
 int scroll_dir ;
 int scroll_interval ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int pvc_proc_read_scroll(char *page, char **start,
        off_t off, int count,
        int *eof, void *data)
{
 char *origpage = page;

 mutex_lock(&pvc_mutex);
 page += sprintf(page, "%d\n", scroll_dir * scroll_interval);
 mutex_unlock(&pvc_mutex);

 return page - origpage;
}
