
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void mmc_remove_card_debugfs(struct mmc_card *card)
{
 debugfs_remove_recursive(card->debugfs_root);
}
