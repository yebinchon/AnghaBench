
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;


 int S_IRUSR ;
 int S_IWUSR ;
 struct proc_dir_entry* proc_create (char const*,int,int *,struct file_operations const*) ;

__attribute__((used)) static struct proc_dir_entry *create_flash_pde(const char *filename,
            const struct file_operations *fops)
{
 return proc_create(filename, S_IRUSR | S_IWUSR, ((void*)0), fops);
}
