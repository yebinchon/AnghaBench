
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sg_el {int size; int bus_addr; } ;
struct empty_scb {int num_valid; struct sg_el* eb; } ;
struct asd_seq_data {int num_escbs; struct asd_dma_tok** edb_arr; struct asd_ascb** escb_arr; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;
struct asd_dma_tok {scalar_t__ size; scalar_t__ dma_handle; } ;
struct asd_ascb {int edb_index; TYPE_1__* scb; } ;
struct TYPE_2__ {struct empty_scb escb; } ;


 int ASD_EDBS_PER_SCB ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int memset (struct sg_el*,int ,int) ;

__attribute__((used)) static void asd_assign_edbs2escbs(struct asd_ha_struct *asd_ha)
{
 struct asd_seq_data *seq = &asd_ha->seq;
 int i, k, z = 0;

 for (i = 0; i < seq->num_escbs; i++) {
  struct asd_ascb *ascb = seq->escb_arr[i];
  struct empty_scb *escb = &ascb->scb->escb;

  ascb->edb_index = z;

  escb->num_valid = ASD_EDBS_PER_SCB;

  for (k = 0; k < ASD_EDBS_PER_SCB; k++) {
   struct sg_el *eb = &escb->eb[k];
   struct asd_dma_tok *edb = seq->edb_arr[z++];

   memset(eb, 0, sizeof(*eb));
   eb->bus_addr = cpu_to_le64(((u64) edb->dma_handle));
   eb->size = cpu_to_le32(((u32) edb->size));
  }
 }
}
