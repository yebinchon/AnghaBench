
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err_print_prefix ;
 int printk (char*,int ,unsigned int,unsigned long,char*) ;

void
mchk_dump_mem(void *data, size_t length, char **annotation)
{
 unsigned long *ldata = data;
 size_t i;

 for (i = 0; (i * sizeof(*ldata)) < length; i++) {
  if (annotation && !annotation[i])
   annotation = ((void*)0);
  printk("%s    %08x: %016lx    %s\n",
         err_print_prefix,
         (unsigned)(i * sizeof(*ldata)), ldata[i],
         annotation ? annotation[i] : "");
 }
}
