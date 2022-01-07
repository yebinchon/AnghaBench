
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3 {int dummy; } ;


 int ioc3_w_mcr (int ) ;
 int mcr_pack (int,int) ;
 int nic_wait (struct ioc3*) ;

__attribute__((used)) static inline int nic_read_bit(struct ioc3 *ioc3)
{
 int result;

 ioc3_w_mcr(mcr_pack(6, 13));
 result = nic_wait(ioc3);
 ioc3_w_mcr(mcr_pack(0, 100));
 nic_wait(ioc3);

 return result;
}
