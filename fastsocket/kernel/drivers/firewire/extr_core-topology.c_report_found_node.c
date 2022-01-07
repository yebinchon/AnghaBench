
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {scalar_t__ phy_speed; scalar_t__ max_speed; int b_path; } ;
struct fw_card {scalar_t__ bm_retries; } ;


 int FW_NODE_CREATED ;
 scalar_t__ SCODE_BETA ;
 int fw_node_event (struct fw_card*,struct fw_node*,int ) ;

__attribute__((used)) static void report_found_node(struct fw_card *card,
         struct fw_node *node, struct fw_node *parent)
{
 int b_path = (node->phy_speed == SCODE_BETA);

 if (parent != ((void*)0)) {

  node->max_speed = parent->max_speed < node->phy_speed ?
     parent->max_speed : node->phy_speed;
  node->b_path = parent->b_path && b_path;
 } else {
  node->max_speed = node->phy_speed;
  node->b_path = b_path;
 }

 fw_node_event(card, node, FW_NODE_CREATED);


 card->bm_retries = 0;
}
