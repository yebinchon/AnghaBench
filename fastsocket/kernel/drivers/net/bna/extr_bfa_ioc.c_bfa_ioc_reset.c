
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;


 int bfa_ioc_hwinit (struct bfa_ioc*,int) ;

__attribute__((used)) static void
bfa_ioc_reset(struct bfa_ioc *ioc, bool force)
{
 bfa_ioc_hwinit(ioc, force);
}
