
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct scatterlist {int dummy; } ;
struct nv_adma_prd {scalar_t__ packet_len; int flags; int len; int addr; } ;
struct TYPE_2__ {int flags; } ;
struct ata_queued_cmd {int n_elem; TYPE_1__ tf; } ;


 int ATA_TFLAG_WRITE ;
 int NV_APRD_CONT ;
 int NV_APRD_END ;
 int NV_APRD_WRITE ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void nv_adma_fill_aprd(struct ata_queued_cmd *qc,
         struct scatterlist *sg,
         int idx,
         struct nv_adma_prd *aprd)
{
 u8 flags = 0;
 if (qc->tf.flags & ATA_TFLAG_WRITE)
  flags |= NV_APRD_WRITE;
 if (idx == qc->n_elem - 1)
  flags |= NV_APRD_END;
 else if (idx != 4)
  flags |= NV_APRD_CONT;

 aprd->addr = cpu_to_le64(((u64)sg_dma_address(sg)));
 aprd->len = cpu_to_le32(((u32)sg_dma_len(sg)));
 aprd->flags = flags;
 aprd->packet_len = 0;
}
