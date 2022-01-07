
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ibport {int dummy; } ;
struct ib_cc_mad {int dummy; } ;



__attribute__((used)) static int check_cc_key(struct qib_ibport *ibp,
   struct ib_cc_mad *ccp, int mad_flags)
{
 return 0;
}
