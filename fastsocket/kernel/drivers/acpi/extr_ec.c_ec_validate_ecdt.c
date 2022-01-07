
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int EC_FLAGS_VALIDATE_ECDT ;

__attribute__((used)) static int ec_validate_ecdt(const struct dmi_system_id *id)
{
 EC_FLAGS_VALIDATE_ECDT = 1;
 return 0;
}
