
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int GFP_KERNEL ;
 int S_IRGRP ;
 int S_IRUSR ;
 scalar_t__ is_bad (struct dentry*) ;
 struct dentry** kmalloc (int,int ) ;
 struct dentry* securityfs_create_dir (char*,int *) ;
 struct dentry* securityfs_create_file (char*,int,struct dentry*,int *,int *) ;
 int securityfs_remove (struct dentry*) ;
 int tpm_ascii_bios_measurements_ops ;
 int tpm_binary_bios_measurements_ops ;

struct dentry **tpm_bios_log_setup(char *name)
{
 struct dentry **ret = ((void*)0), *tpm_dir, *bin_file, *ascii_file;

 tpm_dir = securityfs_create_dir(name, ((void*)0));
 if (is_bad(tpm_dir))
  goto out;

 bin_file =
     securityfs_create_file("binary_bios_measurements",
       S_IRUSR | S_IRGRP, tpm_dir, ((void*)0),
       &tpm_binary_bios_measurements_ops);
 if (is_bad(bin_file))
  goto out_tpm;

 ascii_file =
     securityfs_create_file("ascii_bios_measurements",
       S_IRUSR | S_IRGRP, tpm_dir, ((void*)0),
       &tpm_ascii_bios_measurements_ops);
 if (is_bad(ascii_file))
  goto out_bin;

 ret = kmalloc(3 * sizeof(struct dentry *), GFP_KERNEL);
 if (!ret)
  goto out_ascii;

 ret[0] = ascii_file;
 ret[1] = bin_file;
 ret[2] = tpm_dir;

 return ret;

out_ascii:
 securityfs_remove(ascii_file);
out_bin:
 securityfs_remove(bin_file);
out_tpm:
 securityfs_remove(tpm_dir);
out:
 return ((void*)0);
}
