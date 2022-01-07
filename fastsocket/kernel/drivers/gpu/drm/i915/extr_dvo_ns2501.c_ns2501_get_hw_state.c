
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dvo_device {int dummy; } ;


 unsigned char NS2501_8_PD ;
 int NS2501_REG8 ;
 int ns2501_readb (struct intel_dvo_device*,int ,unsigned char*) ;

__attribute__((used)) static bool ns2501_get_hw_state(struct intel_dvo_device *dvo)
{
 unsigned char ch;

 if (!ns2501_readb(dvo, NS2501_REG8, &ch))
  return 0;

 if (ch & NS2501_8_PD)
  return 1;
 else
  return 0;
}
