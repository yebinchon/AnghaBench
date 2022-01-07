
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_id_modify {int dummy; } ;
struct il_addsta_cmd {int add_immediate_ba_ssn; int remove_immediate_ba_tid; int add_immediate_ba_tid; int rate_n_flags; int station_flags_msk; int station_flags; int key; int sta; int mode; } ;
struct il4965_keyinfo {int dummy; } ;
struct il3945_addsta_cmd {int add_immediate_ba_ssn; int remove_immediate_ba_tid; int add_immediate_ba_tid; int rate_n_flags; int tid_disable_tx; int station_flags_msk; int station_flags; int key; int sta; int mode; } ;


 int cpu_to_le16 (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static u16
il3945_build_addsta_hcmd(const struct il_addsta_cmd *cmd, u8 * data)
{
 struct il3945_addsta_cmd *addsta = (struct il3945_addsta_cmd *)data;
 addsta->mode = cmd->mode;
 memcpy(&addsta->sta, &cmd->sta, sizeof(struct sta_id_modify));
 memcpy(&addsta->key, &cmd->key, sizeof(struct il4965_keyinfo));
 addsta->station_flags = cmd->station_flags;
 addsta->station_flags_msk = cmd->station_flags_msk;
 addsta->tid_disable_tx = cpu_to_le16(0);
 addsta->rate_n_flags = cmd->rate_n_flags;
 addsta->add_immediate_ba_tid = cmd->add_immediate_ba_tid;
 addsta->remove_immediate_ba_tid = cmd->remove_immediate_ba_tid;
 addsta->add_immediate_ba_ssn = cmd->add_immediate_ba_ssn;

 return (u16) sizeof(struct il3945_addsta_cmd);
}
