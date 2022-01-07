
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int size; } ;


 int EXCITE_SIZE_BOOTROM ;
 int S_IRUGO ;
 struct proc_dir_entry* create_proc_read_entry (char*,int ,struct proc_dir_entry* const,int ,int *) ;
 int excite_bootrom_read ;
 int excite_unit_id_proc_fops ;
 struct proc_dir_entry* proc_create (char*,int ,struct proc_dir_entry* const,int *) ;
 struct proc_dir_entry* proc_mkdir (char*,int *) ;

void excite_procfs_init(void)
{

 struct proc_dir_entry * const pdir = proc_mkdir("excite", ((void*)0));
 if (pdir) {
  struct proc_dir_entry * e;

  e = proc_create("unit_id", S_IRUGO, pdir,
    &excite_unit_id_proc_fops);
  if (e) e->size = 6;

  e = create_proc_read_entry("bootrom", S_IRUGO, pdir,
        excite_bootrom_read, ((void*)0));
  if (e) e->size = EXCITE_SIZE_BOOTROM;
 }
}
