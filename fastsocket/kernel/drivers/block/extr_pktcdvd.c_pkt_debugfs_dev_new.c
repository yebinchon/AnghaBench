
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int * dfs_f_info; int * dfs_d_root; int name; } ;


 scalar_t__ IS_ERR (int *) ;
 int S_IRUGO ;
 int debug_fops ;
 int * debugfs_create_dir (int ,int ) ;
 int * debugfs_create_file (char*,int ,int *,struct pktcdvd_device*,int *) ;
 int pkt_debugfs_root ;

__attribute__((used)) static void pkt_debugfs_dev_new(struct pktcdvd_device *pd)
{
 if (!pkt_debugfs_root)
  return;
 pd->dfs_f_info = ((void*)0);
 pd->dfs_d_root = debugfs_create_dir(pd->name, pkt_debugfs_root);
 if (IS_ERR(pd->dfs_d_root)) {
  pd->dfs_d_root = ((void*)0);
  return;
 }
 pd->dfs_f_info = debugfs_create_file("info", S_IRUGO,
    pd->dfs_d_root, pd, &debug_fops);
 if (IS_ERR(pd->dfs_f_info)) {
  pd->dfs_f_info = ((void*)0);
  return;
 }
}
