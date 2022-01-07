
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {TYPE_1__* attr; } ;
struct TYPE_2__ {int optrom_version; } ;


 int BFA_VERSION_LEN ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static void
bfa_ioc_get_adapter_optrom_ver(struct bfa_ioc *ioc, char *optrom_ver)
{
 memcpy(optrom_ver, ioc->attr->optrom_version,
        BFA_VERSION_LEN);
}
