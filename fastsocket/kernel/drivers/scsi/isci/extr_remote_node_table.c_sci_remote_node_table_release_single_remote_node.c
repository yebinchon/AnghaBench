
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sci_remote_node_table {int dummy; } ;


 int BUG_ON (int) ;
 int SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE ;
 int SCU_STP_REMOTE_NODE_COUNT ;
 int sci_remote_node_table_clear_group_index (struct sci_remote_node_table*,int,int) ;
 int sci_remote_node_table_get_group_value (struct sci_remote_node_table*,int) ;
 int sci_remote_node_table_set_group_index (struct sci_remote_node_table*,int,int) ;
 int sci_remote_node_table_set_node_index (struct sci_remote_node_table*,int) ;

__attribute__((used)) static void sci_remote_node_table_release_single_remote_node(
 struct sci_remote_node_table *remote_node_table,
 u16 remote_node_index)
{
 u32 group_index;
 u8 group_value;

 group_index = remote_node_index / SCU_STP_REMOTE_NODE_COUNT;

 group_value = sci_remote_node_table_get_group_value(remote_node_table, group_index);




 BUG_ON(group_value == SCIC_SDS_REMOTE_NODE_TABLE_FULL_SLOT_VALUE);

 if (group_value == 0x00) {



  sci_remote_node_table_set_group_index(remote_node_table, 0, group_index);
 } else if ((group_value & (group_value - 1)) == 0) {



  sci_remote_node_table_clear_group_index(remote_node_table, 0, group_index);
  sci_remote_node_table_set_group_index(remote_node_table, 1, group_index);
 } else {



  sci_remote_node_table_clear_group_index(remote_node_table, 1, group_index);
  sci_remote_node_table_set_group_index(remote_node_table, 2, group_index);
 }

 sci_remote_node_table_set_node_index(remote_node_table, remote_node_index);
}
