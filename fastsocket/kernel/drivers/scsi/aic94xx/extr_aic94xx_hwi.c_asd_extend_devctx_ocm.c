
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long max_ddbs; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
typedef int dma_addr_t ;


 unsigned long ASD_DDB_SIZE ;
 int CTXDOMAIN ;
 int DEVCTXBASE ;
 scalar_t__ MAX_DEVS ;
 unsigned long OCM_BASE_ADDR ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_addr (struct asd_ha_struct*,int ,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;

__attribute__((used)) static void asd_extend_devctx_ocm(struct asd_ha_struct *asd_ha)
{
 unsigned long dma_addr = OCM_BASE_ADDR;
 u32 d;

 dma_addr -= asd_ha->hw_prof.max_ddbs * ASD_DDB_SIZE;
 asd_write_reg_addr(asd_ha, DEVCTXBASE, (dma_addr_t) dma_addr);
 d = asd_read_reg_dword(asd_ha, CTXDOMAIN);
 d |= 4;
 asd_write_reg_dword(asd_ha, CTXDOMAIN, d);
 asd_ha->hw_prof.max_ddbs += MAX_DEVS;
}
