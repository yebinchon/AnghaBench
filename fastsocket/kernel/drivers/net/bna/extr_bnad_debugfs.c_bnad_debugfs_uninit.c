
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int * port_debugfs_root; int ** bnad_dentry_files; } ;


 int ARRAY_SIZE (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int bna_debugfs_port_count ;
 int * bna_debugfs_root ;
 int bnad_debugfs_files ;
 int debugfs_remove (int *) ;

void
bnad_debugfs_uninit(struct bnad *bnad)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bnad_debugfs_files); i++) {
  if (bnad->bnad_dentry_files[i]) {
   debugfs_remove(bnad->bnad_dentry_files[i]);
   bnad->bnad_dentry_files[i] = ((void*)0);
  }
 }


 if (bnad->port_debugfs_root) {
  debugfs_remove(bnad->port_debugfs_root);
  bnad->port_debugfs_root = ((void*)0);
  atomic_dec(&bna_debugfs_port_count);
 }


 if (atomic_read(&bna_debugfs_port_count) == 0) {
  debugfs_remove(bna_debugfs_root);
  bna_debugfs_root = ((void*)0);
 }
}
