
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int QMAP_IDX_MASK ;

__attribute__((used)) static u64 replace_wr_id(u64 wr_id, u16 idx)
{
 u64 ret;

 ret = wr_id & ~QMAP_IDX_MASK;
 ret |= idx & QMAP_IDX_MASK;

 return ret;
}
