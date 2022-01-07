
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int ** bfad_dentry_files; } ;
struct bfad_port_s {int * port_debugfs_root; struct bfad_s* bfad; } ;


 int ARRAY_SIZE (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int bfa_debugfs_port_count ;
 int * bfa_debugfs_root ;
 int bfad_debugfs_files ;
 int debugfs_remove (int *) ;

inline void
bfad_debugfs_exit(struct bfad_port_s *port)
{
 struct bfad_s *bfad = port->bfad;
 int i;

 for (i = 0; i < ARRAY_SIZE(bfad_debugfs_files); i++) {
  if (bfad->bfad_dentry_files[i]) {
   debugfs_remove(bfad->bfad_dentry_files[i]);
   bfad->bfad_dentry_files[i] = ((void*)0);
  }
 }


 if (port->port_debugfs_root) {
  debugfs_remove(port->port_debugfs_root);
  port->port_debugfs_root = ((void*)0);
  atomic_dec(&bfa_debugfs_port_count);
 }


 if (atomic_read(&bfa_debugfs_port_count) == 0) {
  debugfs_remove(bfa_debugfs_root);
  bfa_debugfs_root = ((void*)0);
 }
}
