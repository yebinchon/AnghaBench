
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int * write_proc; int read_proc; int * data; } ;
typedef int name ;


 int S_IFREG ;
 int S_IRUGO ;
 struct proc_dir_entry* create_proc_entry (char*,int,struct proc_dir_entry*) ;
 int make_proc_ide () ;
 int proc_ide ;
 int proc_ide_read_media ;
 int * proc_ide_root ;
 struct proc_dir_entry* proc_mkdir (char const*,int ) ;
 int proc_symlink (char const*,int *,char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void make_ide_entries(const char *dev_name)
{
 struct proc_dir_entry *dir, *ent;
 char name[64];

 if(proc_ide_root == ((void*)0)) make_proc_ide();

 dir = proc_mkdir(dev_name, proc_ide);
 if(!dir) return;

 ent = create_proc_entry("media", S_IFREG|S_IRUGO, dir);
 if(!ent) return;
 ent->data = ((void*)0);
 ent->read_proc = proc_ide_read_media;
 ent->write_proc = ((void*)0);
 snprintf(name, sizeof(name), "ide0/%s", dev_name);
 proc_symlink(dev_name, proc_ide_root, name);
}
