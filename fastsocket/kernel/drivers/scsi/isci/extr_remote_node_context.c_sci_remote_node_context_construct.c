
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sci_remote_node_context {int sm; int destination_state; int remote_node_index; } ;


 int RNC_DEST_UNSPECIFIED ;
 int SCI_RNC_INITIAL ;
 int memset (struct sci_remote_node_context*,int ,int) ;
 int sci_init_sm (int *,int ,int ) ;
 int sci_remote_node_context_state_table ;

void sci_remote_node_context_construct(struct sci_remote_node_context *rnc,
         u16 remote_node_index)
{
 memset(rnc, 0, sizeof(struct sci_remote_node_context));

 rnc->remote_node_index = remote_node_index;
 rnc->destination_state = RNC_DEST_UNSPECIFIED;

 sci_init_sm(&rnc->sm, sci_remote_node_context_state_table, SCI_RNC_INITIAL);
}
