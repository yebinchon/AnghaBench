
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;


 int bfa_iocpf_enable (struct bfa_ioc*) ;

__attribute__((used)) static void
bfa_ioc_sm_enabling_entry(struct bfa_ioc *ioc)
{
 bfa_iocpf_enable(ioc);
}
