
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_level {int dummy; } ;
struct seq_file {int dummy; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int cpcmd (char*,char*,int,int *) ;
 int kfree (char*) ;
 char* kmalloc (int,int) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void service_level_vm_print(struct seq_file *m,
       struct service_level *slr)
{
 char *query_buffer, *str;

 query_buffer = kmalloc(1024, GFP_KERNEL | GFP_DMA);
 if (!query_buffer)
  return;
 cpcmd("QUERY CPLEVEL", query_buffer, 1024, ((void*)0));
 str = strchr(query_buffer, '\n');
 if (str)
  *str = 0;
 seq_printf(m, "VM: %s\n", query_buffer);
 kfree(query_buffer);
}
