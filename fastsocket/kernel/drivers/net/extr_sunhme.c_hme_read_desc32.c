
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct happy_meal {int dummy; } ;
typedef int hme32 ;
typedef int __le32 ;


 int le32_to_cpup (int *) ;

__attribute__((used)) static inline u32 hme_read_desc32(struct happy_meal *hp, hme32 *p)
{
 return le32_to_cpup((__le32 *)p);
}
