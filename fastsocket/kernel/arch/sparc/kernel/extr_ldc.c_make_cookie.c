
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int COOKIE_PGSZ_CODE_SHIFT ;
 int PAGE_SHIFT ;

__attribute__((used)) static u64 make_cookie(u64 index, u64 pgsz_code, u64 page_offset)
{
 return ((pgsz_code << COOKIE_PGSZ_CODE_SHIFT) |
  (index << PAGE_SHIFT) |
  page_offset);
}
