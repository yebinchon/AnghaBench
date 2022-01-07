
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_4__ {int level; } ;
struct ath5k_hw {int ah_use_32khz_clock; TYPE_3__* hw; TYPE_1__ debug; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct TYPE_5__ {int debugfsdir; } ;


 int S_IRUSR ;
 int S_IWUSR ;
 int ath5k_debug ;
 int debugfs_create_bool (char*,int,struct dentry*,int *) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct ath5k_hw*,int *) ;
 int fops_ani ;
 int fops_antenna ;
 int fops_beacon ;
 int fops_debug ;
 int fops_frameerrors ;
 int fops_misc ;
 int fops_queue ;
 int fops_registers ;
 int fops_reset ;

void
ath5k_debug_init_device(struct ath5k_hw *ah)
{
 struct dentry *phydir;

 ah->debug.level = ath5k_debug;

 phydir = debugfs_create_dir("ath5k", ah->hw->wiphy->debugfsdir);
 if (!phydir)
  return;

 debugfs_create_file("debug", S_IWUSR | S_IRUSR, phydir, ah,
       &fops_debug);

 debugfs_create_file("registers", S_IRUSR, phydir, ah, &fops_registers);

 debugfs_create_file("beacon", S_IWUSR | S_IRUSR, phydir, ah,
       &fops_beacon);

 debugfs_create_file("reset", S_IWUSR, phydir, ah, &fops_reset);

 debugfs_create_file("antenna", S_IWUSR | S_IRUSR, phydir, ah,
       &fops_antenna);

 debugfs_create_file("misc", S_IRUSR, phydir, ah, &fops_misc);

 debugfs_create_file("frameerrors", S_IWUSR | S_IRUSR, phydir, ah,
       &fops_frameerrors);

 debugfs_create_file("ani", S_IWUSR | S_IRUSR, phydir, ah, &fops_ani);

 debugfs_create_file("queue", S_IWUSR | S_IRUSR, phydir, ah,
       &fops_queue);

 debugfs_create_bool("32khz_clock", S_IWUSR | S_IRUSR, phydir,
       &ah->ah_use_32khz_clock);
}
