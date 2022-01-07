
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int fce; scalar_t__* fce_mb; int fce_dma; int fce_bufs; } ;
struct qla2xxx_fce_chain {int type; int* eregs; void* size; void* addr_h; void* addr_l; void* chain_size; } ;


 int DUMP_CHAIN_FCE ;
 scalar_t__ LSD (int ) ;
 scalar_t__ MSD (int ) ;
 int __constant_htonl (int ) ;
 scalar_t__ fce_calc_size (int ) ;
 void* htonl (scalar_t__) ;
 int memcpy (int*,int ,int) ;
 int ntohl (void*) ;

__attribute__((used)) static inline void *
qla25xx_copy_fce(struct qla_hw_data *ha, void *ptr, uint32_t **last_chain)
{
 uint32_t cnt;
 uint32_t *iter_reg;
 struct qla2xxx_fce_chain *fcec = ptr;

 if (!ha->fce)
  return ptr;

 *last_chain = &fcec->type;
 fcec->type = __constant_htonl(DUMP_CHAIN_FCE);
 fcec->chain_size = htonl(sizeof(struct qla2xxx_fce_chain) +
     fce_calc_size(ha->fce_bufs));
 fcec->size = htonl(fce_calc_size(ha->fce_bufs));
 fcec->addr_l = htonl(LSD(ha->fce_dma));
 fcec->addr_h = htonl(MSD(ha->fce_dma));

 iter_reg = fcec->eregs;
 for (cnt = 0; cnt < 8; cnt++)
  *iter_reg++ = htonl(ha->fce_mb[cnt]);

 memcpy(iter_reg, ha->fce, ntohl(fcec->size));

 return (void *)iter_reg + ntohl(fcec->size);
}
