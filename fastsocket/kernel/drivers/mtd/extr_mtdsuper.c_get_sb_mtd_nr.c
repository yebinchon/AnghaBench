
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct mtd_info {int dummy; } ;
struct file_system_type {int dummy; } ;


 int DEBUG (int ,char*,int) ;
 scalar_t__ IS_ERR (struct mtd_info*) ;
 int PTR_ERR (struct mtd_info*) ;
 struct mtd_info* get_mtd_device (int *,int) ;
 int get_sb_mtd_aux (struct file_system_type*,int,char const*,void*,struct mtd_info*,int (*) (struct super_block*,void*,int),struct vfsmount*) ;

__attribute__((used)) static int get_sb_mtd_nr(struct file_system_type *fs_type, int flags,
    const char *dev_name, void *data, int mtdnr,
    int (*fill_super)(struct super_block *, void *, int),
    struct vfsmount *mnt)
{
 struct mtd_info *mtd;

 mtd = get_mtd_device(((void*)0), mtdnr);
 if (IS_ERR(mtd)) {
  DEBUG(0, "MTDSB: Device #%u doesn't appear to exist\n", mtdnr);
  return PTR_ERR(mtd);
 }

 return get_sb_mtd_aux(fs_type, flags, dev_name, data, mtd, fill_super,
         mnt);
}
