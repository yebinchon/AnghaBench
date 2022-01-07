
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef void dentry ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int TMP_SIZE ;
 int diag204_info_type ;
 int diag224_idx2name (int ,char*) ;
 void* hypfs_create_str (struct super_block*,void*,char*,char*) ;
 void* hypfs_create_u64 (struct super_block*,void*,char*,int ) ;
 void* hypfs_mkdir (struct super_block*,void*,char*) ;
 int phys_cpu__cpu_addr (int ,void*) ;
 int phys_cpu__ctidx (int ,void*) ;
 int phys_cpu__mgm_time (int ,void*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int hypfs_create_phys_cpu_files(struct super_block *sb,
           struct dentry *cpus_dir, void *cpu_info)
{
 struct dentry *cpu_dir;
 char buffer[TMP_SIZE];
 void *rc;

 snprintf(buffer, TMP_SIZE, "%i", phys_cpu__cpu_addr(diag204_info_type,
           cpu_info));
 cpu_dir = hypfs_mkdir(sb, cpus_dir, buffer);
 if (IS_ERR(cpu_dir))
  return PTR_ERR(cpu_dir);
 rc = hypfs_create_u64(sb, cpu_dir, "mgmtime",
         phys_cpu__mgm_time(diag204_info_type, cpu_info));
 if (IS_ERR(rc))
  return PTR_ERR(rc);
 diag224_idx2name(phys_cpu__ctidx(diag204_info_type, cpu_info), buffer);
 rc = hypfs_create_str(sb, cpu_dir, "type", buffer);
 if (IS_ERR(rc))
  return PTR_ERR(rc);
 return 0;
}
