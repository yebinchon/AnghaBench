
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sci_remote_node_table {int dummy; } ;


 int SCU_STP_REMOTE_NODE_COUNT ;
 int sci_remote_node_table_set_group (struct sci_remote_node_table*,int) ;
 int sci_remote_node_table_set_group_index (struct sci_remote_node_table*,int,int) ;

__attribute__((used)) static void sci_remote_node_table_release_triple_remote_node(
 struct sci_remote_node_table *remote_node_table,
 u16 remote_node_index)
{
 u32 group_index;

 group_index = remote_node_index / SCU_STP_REMOTE_NODE_COUNT;

 sci_remote_node_table_set_group_index(
  remote_node_table, 2, group_index
  );

 sci_remote_node_table_set_group(remote_node_table, group_index);
}
