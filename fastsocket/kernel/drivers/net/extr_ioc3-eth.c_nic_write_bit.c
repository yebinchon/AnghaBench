
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3 {int dummy; } ;


 int ioc3_w_mcr (int ) ;
 int mcr_pack (int,int) ;
 int nic_wait (struct ioc3*) ;

__attribute__((used)) static inline void nic_write_bit(struct ioc3 *ioc3, int bit)
{
 if (bit)
  ioc3_w_mcr(mcr_pack(6, 110));
 else
  ioc3_w_mcr(mcr_pack(80, 30));

 nic_wait(ioc3);
}
