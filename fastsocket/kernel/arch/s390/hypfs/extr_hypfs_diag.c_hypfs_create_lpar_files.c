
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef void dentry ;


 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int LPAR_NAME_LEN ;
 int cpu_info__size (int ) ;
 int diag204_info_type ;
 int hypfs_create_cpu_files (struct super_block*,void*,void*) ;
 void* hypfs_mkdir (struct super_block*,void*,char*) ;
 int part_hdr__part_name (int ,void*,char*) ;
 int part_hdr__rcpus (int ,void*) ;
 int part_hdr__size (int ) ;

__attribute__((used)) static void *hypfs_create_lpar_files(struct super_block *sb,
         struct dentry *systems_dir, void *part_hdr)
{
 struct dentry *cpus_dir;
 struct dentry *lpar_dir;
 char lpar_name[LPAR_NAME_LEN + 1];
 void *cpu_info;
 int i;

 part_hdr__part_name(diag204_info_type, part_hdr, lpar_name);
 lpar_name[LPAR_NAME_LEN] = 0;
 lpar_dir = hypfs_mkdir(sb, systems_dir, lpar_name);
 if (IS_ERR(lpar_dir))
  return lpar_dir;
 cpus_dir = hypfs_mkdir(sb, lpar_dir, "cpus");
 if (IS_ERR(cpus_dir))
  return cpus_dir;
 cpu_info = part_hdr + part_hdr__size(diag204_info_type);
 for (i = 0; i < part_hdr__rcpus(diag204_info_type, part_hdr); i++) {
  int rc;
  rc = hypfs_create_cpu_files(sb, cpus_dir, cpu_info);
  if (rc)
   return ERR_PTR(rc);
  cpu_info += cpu_info__size(diag204_info_type);
 }
 return cpu_info;
}
