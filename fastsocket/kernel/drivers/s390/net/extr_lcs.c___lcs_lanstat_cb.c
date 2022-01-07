
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mac_addr; } ;
struct TYPE_4__ {TYPE_1__ lcs_lanstat_cmd; } ;
struct lcs_cmd {TYPE_2__ cmd; } ;
struct lcs_card {int mac; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_MAC_LENGTH ;
 int memcpy (int ,int ,int ) ;
 int trace ;

__attribute__((used)) static void
__lcs_lanstat_cb(struct lcs_card *card, struct lcs_cmd *cmd)
{
 LCS_DBF_TEXT(2, trace, "statcb");
 memcpy(card->mac, cmd->cmd.lcs_lanstat_cmd.mac_addr, LCS_MAC_LENGTH);
}
