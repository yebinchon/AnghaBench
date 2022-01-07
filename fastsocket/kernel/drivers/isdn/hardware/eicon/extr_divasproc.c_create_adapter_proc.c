
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {TYPE_1__* data; int read_proc; int write_proc; } ;
struct TYPE_3__ {void* proc_d_l1_down; void* proc_grp_opt; void* proc_info; void* proc_adapter_dir; int controller; } ;
typedef TYPE_1__ diva_os_xdi_adapter_t ;


 int DBG_TRC (char*) ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 char* adapter_dir_name ;
 struct proc_dir_entry* create_proc_entry (int ,int,struct proc_dir_entry*) ;
 int d_l1_down_proc_name ;
 int grp_opt_proc_name ;
 int info_proc_name ;
 int info_read ;
 int info_write ;
 struct proc_dir_entry* proc_mkdir (char*,int ) ;
 int proc_net_eicon ;
 int read_d_l1_down ;
 int read_grp_opt ;
 int sprintf (char*,char*,char*,int ) ;
 int write_d_l1_down ;
 int write_grp_opt ;

int create_adapter_proc(diva_os_xdi_adapter_t * a)
{
 struct proc_dir_entry *de, *pe;
 char tmp[16];

 sprintf(tmp, "%s%d", adapter_dir_name, a->controller);
 if (!(de = proc_mkdir(tmp, proc_net_eicon)))
  return (0);
 a->proc_adapter_dir = (void *) de;

 if (!(pe =
      create_proc_entry(info_proc_name, S_IFREG | S_IRUGO | S_IWUSR, de)))
  return (0);
 a->proc_info = (void *) pe;
 pe->write_proc = info_write;
 pe->read_proc = info_read;
 pe->data = a;

 if ((pe = create_proc_entry(grp_opt_proc_name,
          S_IFREG | S_IRUGO | S_IWUSR, de))) {
  a->proc_grp_opt = (void *) pe;
  pe->write_proc = write_grp_opt;
  pe->read_proc = read_grp_opt;
  pe->data = a;
 }
 if ((pe = create_proc_entry(d_l1_down_proc_name,
          S_IFREG | S_IRUGO | S_IWUSR, de))) {
  a->proc_d_l1_down = (void *) pe;
  pe->write_proc = write_d_l1_down;
  pe->read_proc = read_d_l1_down;
  pe->data = a;
 }

 DBG_TRC(("proc entry %s created", tmp));

 return (1);
}
