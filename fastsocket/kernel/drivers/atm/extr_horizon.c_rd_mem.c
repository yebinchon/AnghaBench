
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hrz_dev ;
typedef int HDW ;


 int MEMORY_PORT_OFF ;
 int MEM_RD_ADDR_REG_OFF ;
 int rd_regl (int const*,int ) ;
 int wr_regl (int const*,int ,int) ;

__attribute__((used)) static inline u32 rd_mem (const hrz_dev * dev, HDW * addr) {

  wr_regl (dev, MEM_RD_ADDR_REG_OFF, (addr - (HDW *) 0) * sizeof(HDW));
  return rd_regl (dev, MEMORY_PORT_OFF);
}
