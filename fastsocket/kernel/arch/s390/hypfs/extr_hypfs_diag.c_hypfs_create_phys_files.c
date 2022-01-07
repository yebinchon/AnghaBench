
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef void dentry ;


 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int diag204_info_type ;
 int hypfs_create_phys_cpu_files (struct super_block*,void*,void*) ;
 void* hypfs_mkdir (struct super_block*,void*,char*) ;
 int phys_cpu__size (int ) ;
 int phys_hdr__cpus (int ,void*) ;
 int phys_hdr__size (int ) ;

__attribute__((used)) static void *hypfs_create_phys_files(struct super_block *sb,
         struct dentry *parent_dir, void *phys_hdr)
{
 int i;
 void *cpu_info;
 struct dentry *cpus_dir;

 cpus_dir = hypfs_mkdir(sb, parent_dir, "cpus");
 if (IS_ERR(cpus_dir))
  return cpus_dir;
 cpu_info = phys_hdr + phys_hdr__size(diag204_info_type);
 for (i = 0; i < phys_hdr__cpus(diag204_info_type, phys_hdr); i++) {
  int rc;
  rc = hypfs_create_phys_cpu_files(sb, cpus_dir, cpu_info);
  if (rc)
   return ERR_PTR(rc);
  cpu_info += phys_cpu__size(diag204_info_type);
 }
 return cpu_info;
}
