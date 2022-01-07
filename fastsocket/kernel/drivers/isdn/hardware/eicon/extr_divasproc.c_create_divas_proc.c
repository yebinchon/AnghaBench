
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFREG ;
 int S_IRUGO ;
 int divas_fops ;
 int divas_proc_entry ;
 int divas_proc_name ;
 int proc_create (int ,int,int ,int *) ;
 int proc_net_eicon ;

int create_divas_proc(void)
{
 divas_proc_entry = proc_create(divas_proc_name, S_IFREG | S_IRUGO,
     proc_net_eicon, &divas_fops);
 if (!divas_proc_entry)
  return (0);

 return (1);
}
