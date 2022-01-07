
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3 {int dummy; } ;


 int ioc3_w_mcr (int ) ;
 int mcr_pack (int,int) ;
 int nic_wait (struct ioc3*) ;

__attribute__((used)) static int nic_reset(struct ioc3 *ioc3)
{
        int presence;

 ioc3_w_mcr(mcr_pack(500, 65));
 presence = nic_wait(ioc3);

 ioc3_w_mcr(mcr_pack(0, 500));
 nic_wait(ioc3);

        return presence;
}
