
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int bfa_trc (struct bfa_ioc_s*,int ) ;

__attribute__((used)) static void
bfa_ioc_sm_hwfail_entry(struct bfa_ioc_s *ioc)
{
 bfa_trc(ioc, 0);
}
