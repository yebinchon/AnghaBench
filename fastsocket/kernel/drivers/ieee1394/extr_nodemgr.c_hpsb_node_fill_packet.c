
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_entry {int nodeid; int generation; int host; } ;
struct hpsb_packet {int node_id; int generation; int host; } ;


 int smp_rmb () ;

void hpsb_node_fill_packet(struct node_entry *ne, struct hpsb_packet *packet)
{
 packet->host = ne->host;
 packet->generation = ne->generation;
 smp_rmb();
 packet->node_id = ne->nodeid;
}
