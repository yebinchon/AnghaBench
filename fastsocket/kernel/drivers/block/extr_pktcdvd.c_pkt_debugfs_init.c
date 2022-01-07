
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRIVER_NAME ;
 scalar_t__ IS_ERR (int *) ;
 int * debugfs_create_dir (int ,int *) ;
 int * pkt_debugfs_root ;

__attribute__((used)) static void pkt_debugfs_init(void)
{
 pkt_debugfs_root = debugfs_create_dir(DRIVER_NAME, ((void*)0));
 if (IS_ERR(pkt_debugfs_root)) {
  pkt_debugfs_root = ((void*)0);
  return;
 }
}
