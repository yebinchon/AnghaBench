
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dvo_device {int dummy; } ;


 unsigned char SIL164_8_PD ;
 int SIL164_REG8 ;
 int sil164_readb (struct intel_dvo_device*,int ,unsigned char*) ;

__attribute__((used)) static bool sil164_get_hw_state(struct intel_dvo_device *dvo)
{
 int ret;
 unsigned char ch;

 ret = sil164_readb(dvo, SIL164_REG8, &ch);
 if (ret == 0)
  return 0;

 if (ch & SIL164_8_PD)
  return 1;
 else
  return 0;
}
