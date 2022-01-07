
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int dev; } ;


 int IPU_IMA_ADDR ;
 int IPU_IMA_DATA ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int idmac_write_ipureg (TYPE_1__*,scalar_t__,int ) ;
 TYPE_1__ ipu_data ;

__attribute__((used)) static void ipu_write_param_mem(uint32_t addr, uint32_t *data,
    uint32_t num_words)
{
 for (; num_words > 0; num_words--) {
  dev_dbg(ipu_data.dev,
   "write param mem - addr = 0x%08X, data = 0x%08X\n",
   addr, *data);
  idmac_write_ipureg(&ipu_data, addr, IPU_IMA_ADDR);
  idmac_write_ipureg(&ipu_data, *data++, IPU_IMA_DATA);
  addr++;
  if ((addr & 0x7) == 5) {
   addr &= ~0x7;
   addr += 8;
  }
 }
}
