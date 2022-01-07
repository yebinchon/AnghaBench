
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {int dummy; } ;
struct fw_card {scalar_t__ bm_retries; } ;


 int FW_NODE_DESTROYED ;
 int fw_node_event (struct fw_card*,struct fw_node*,int ) ;
 int fw_node_put (struct fw_node*) ;

__attribute__((used)) static void report_lost_node(struct fw_card *card,
        struct fw_node *node, struct fw_node *parent)
{
 fw_node_event(card, node, FW_NODE_DESTROYED);
 fw_node_put(node);


 card->bm_retries = 0;
}
