
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esp {TYPE_1__* target; int esp_cmd_pool; int active_cmds; int queued_cmds; } ;
struct TYPE_2__ {scalar_t__ nego_goal_tags; scalar_t__ nego_goal_width; scalar_t__ nego_goal_offset; scalar_t__ nego_goal_period; scalar_t__ flags; } ;


 int ESP_MAX_TARGET ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void esp_init_swstate(struct esp *esp)
{
 int i;

 INIT_LIST_HEAD(&esp->queued_cmds);
 INIT_LIST_HEAD(&esp->active_cmds);
 INIT_LIST_HEAD(&esp->esp_cmd_pool);





 for (i = 0 ; i < ESP_MAX_TARGET; i++) {
  esp->target[i].flags = 0;
  esp->target[i].nego_goal_period = 0;
  esp->target[i].nego_goal_offset = 0;
  esp->target[i].nego_goal_width = 0;
  esp->target[i].nego_goal_tags = 0;
 }
}
