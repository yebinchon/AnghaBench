
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct lvds_fp_timing {int dummy; } ;
struct bdb_lvds_lfp_data_ptrs {TYPE_1__* ptr; } ;
struct bdb_lvds_lfp_data {int dummy; } ;
struct bdb_header {int dummy; } ;
struct TYPE_2__ {size_t fp_timing_offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;

__attribute__((used)) static const struct lvds_fp_timing *
get_lvds_fp_timing(const struct bdb_header *bdb,
     const struct bdb_lvds_lfp_data *data,
     const struct bdb_lvds_lfp_data_ptrs *ptrs,
     int index)
{
 size_t data_ofs = (const u8 *)data - (const u8 *)bdb;
 u16 data_size = ((const u16 *)data)[-1];
 size_t ofs;

 if (index >= ARRAY_SIZE(ptrs->ptr))
  return ((void*)0);
 ofs = ptrs->ptr[index].fp_timing_offset;
 if (ofs < data_ofs ||
     ofs + sizeof(struct lvds_fp_timing) > data_ofs + data_size)
  return ((void*)0);
 return (const struct lvds_fp_timing *)((const u8 *)bdb + ofs);
}
