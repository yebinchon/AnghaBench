
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fw_card {int* topology_map; TYPE_1__* root_node; } ;
struct TYPE_2__ {int node_id; } ;


 int fw_compute_block_crc (int*) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static void update_topology_map(struct fw_card *card,
    u32 *self_ids, int self_id_count)
{
 int node_count;

 card->topology_map[1]++;
 node_count = (card->root_node->node_id & 0x3f) + 1;
 card->topology_map[2] = (node_count << 16) | self_id_count;
 card->topology_map[0] = (self_id_count + 2) << 16;
 memcpy(&card->topology_map[3], self_ids, self_id_count * 4);
 fw_compute_block_crc(card->topology_map);
}
