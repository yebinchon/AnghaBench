
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SIFACL ;
 int SIFWRITEB (int ,int ) ;

__attribute__((used)) static void tms380tr_disable_interrupts(struct net_device *dev)
{
 SIFWRITEB(0, SIFACL);

 return;
}
