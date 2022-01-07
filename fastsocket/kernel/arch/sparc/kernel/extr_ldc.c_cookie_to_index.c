
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int COOKIE_PGSZ_CODE ;
 int COOKIE_PGSZ_CODE_SHIFT ;

__attribute__((used)) static u64 cookie_to_index(u64 cookie, unsigned long *shift)
{
 u64 szcode = cookie >> COOKIE_PGSZ_CODE_SHIFT;

 cookie &= ~COOKIE_PGSZ_CODE;

 *shift = szcode * 3;

 return (cookie >> (13ULL + (szcode * 3ULL)));
}
