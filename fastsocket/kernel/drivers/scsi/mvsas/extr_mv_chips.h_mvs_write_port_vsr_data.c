
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int MVS_P0_VSR_DATA ;
 int MVS_P4_VSR_DATA ;
 int mvs_write_port (struct mvs_info*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void mvs_write_port_vsr_data(struct mvs_info *mvi,
      u32 port, u32 val)
{
 mvs_write_port(mvi, MVS_P0_VSR_DATA,
   MVS_P4_VSR_DATA, port, val);
}
