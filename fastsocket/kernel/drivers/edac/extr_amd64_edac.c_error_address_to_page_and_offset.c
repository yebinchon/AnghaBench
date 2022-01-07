
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;

__attribute__((used)) static inline void error_address_to_page_and_offset(u64 error_address,
          u32 *page, u32 *offset)
{
 *page = (u32) (error_address >> PAGE_SHIFT);
 *offset = ((u32) error_address) & ~PAGE_MASK;
}
