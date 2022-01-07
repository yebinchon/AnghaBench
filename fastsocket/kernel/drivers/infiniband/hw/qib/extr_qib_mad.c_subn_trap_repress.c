
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_SUCCESS ;

__attribute__((used)) static int subn_trap_repress(struct ib_smp *smp, struct ib_device *ibdev,
        u8 port)
{






 return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
}
