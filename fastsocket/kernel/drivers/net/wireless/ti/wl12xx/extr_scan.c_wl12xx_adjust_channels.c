
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlcore_scan_channels {int channels_5; int channels_2; int passive_active; int dfs; int active; int passive; } ;
struct wl1271_cmd_sched_scan_config {int channels_5; int channels_2; int n_pactive_ch; int dfs; int active; int passive; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void wl12xx_adjust_channels(struct wl1271_cmd_sched_scan_config *cmd,
       struct wlcore_scan_channels *cmd_channels)
{
 memcpy(cmd->passive, cmd_channels->passive, sizeof(cmd->passive));
 memcpy(cmd->active, cmd_channels->active, sizeof(cmd->active));
 cmd->dfs = cmd_channels->dfs;
 cmd->n_pactive_ch = cmd_channels->passive_active;

 memcpy(cmd->channels_2, cmd_channels->channels_2,
        sizeof(cmd->channels_2));
 memcpy(cmd->channels_5, cmd_channels->channels_5,
        sizeof(cmd->channels_5));

}
