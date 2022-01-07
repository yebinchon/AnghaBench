
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ACL_SINTEN ;
 int SIFACL ;
 int SIFWRITEB (int ,int ) ;

__attribute__((used)) static void tms380tr_enable_interrupts(struct net_device *dev)
{
 SIFWRITEB(ACL_SINTEN, SIFACL);

 return;
}
