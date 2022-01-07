
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int guid; } ;
struct qib_ibport {int * guids; } ;
typedef int __be64 ;


 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;

__attribute__((used)) static __be64 get_sguid(struct qib_ibport *ibp, unsigned index)
{
 if (!index) {
  struct qib_pportdata *ppd = ppd_from_ibp(ibp);

  return ppd->guid;
 } else
  return ibp->guids[index - 1];
}
