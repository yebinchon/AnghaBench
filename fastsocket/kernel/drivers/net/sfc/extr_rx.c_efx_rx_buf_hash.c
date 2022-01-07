
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int __le32 ;


 int __le32_to_cpup (int const*) ;

__attribute__((used)) static inline u32 efx_rx_buf_hash(const u8 *eh)
{


 return __le32_to_cpup((const __le32 *)(eh - 4));







}
