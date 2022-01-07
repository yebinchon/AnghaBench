
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void mmc_remove_host_debugfs(struct mmc_host *host)
{
 debugfs_remove_recursive(host->debugfs_root);
}
