
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int QMAP_IDX_MASK ;

__attribute__((used)) static u16 get_app_wr_id(u64 wr_id)
{
 return wr_id & QMAP_IDX_MASK;
}
