
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_ctxtdata {scalar_t__ rcvhdrtail_kvaddr; } ;
typedef int __le64 ;


 int le64_to_cpu (int volatile) ;

__attribute__((used)) static inline u32 qib_get_rcvhdrtail(const struct qib_ctxtdata *rcd)
{




 return (u32) le64_to_cpu(
  *((volatile __le64 *)rcd->rcvhdrtail_kvaddr));
}
