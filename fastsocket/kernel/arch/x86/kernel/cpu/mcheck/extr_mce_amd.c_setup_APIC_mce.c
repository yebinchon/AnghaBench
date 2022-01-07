
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_EILVT_MSG_FIX ;
 int THRESHOLD_APIC_VECTOR ;
 int setup_APIC_eilvt (int,int ,int ,int ) ;

__attribute__((used)) static int setup_APIC_mce(int reserved, int new)
{
 if (reserved < 0 && !setup_APIC_eilvt(new, THRESHOLD_APIC_VECTOR,
           APIC_EILVT_MSG_FIX, 0))
  return new;

 return reserved;
}
