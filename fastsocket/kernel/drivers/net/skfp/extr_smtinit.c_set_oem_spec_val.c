
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fddi_mib {int fddiSMTConnectionPolicy; } ;
struct s_smc {struct fddi_mib mib; } ;


 char OEMID (struct s_smc*,int ) ;
 int POLICY_MM ;

__attribute__((used)) static void set_oem_spec_val(struct s_smc *smc)
{
 struct fddi_mib *mib ;

 mib = &smc->mib ;




 if (OEMID(smc,0) == 'I') {
  mib->fddiSMTConnectionPolicy = POLICY_MM ;
 }
}
