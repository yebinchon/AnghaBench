
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hrz_dev ;


 int MEMORY_PORT_OFF ;
 int MEM_WR_ADDR_REG_OFF ;
 int wr_regl (int const*,int ,int) ;

__attribute__((used)) static inline void wr_framer (const hrz_dev * dev, u32 addr, u32 data) {
  wr_regl (dev, MEM_WR_ADDR_REG_OFF, (u32) addr | 0x80000000);
  wr_regl (dev, MEMORY_PORT_OFF, data);
}
