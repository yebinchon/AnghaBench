
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sas_dev_type { ____Placeholder_sas_dev_type } sas_dev_type ;


 int SAS_END_DEV ;
 int SATA_PENDING ;

__attribute__((used)) static bool dev_type_flutter(enum sas_dev_type new, enum sas_dev_type old)
{
 if (old == new)
  return 1;




 if ((old == SATA_PENDING && new == SAS_END_DEV) ||
     (old == SAS_END_DEV && new == SATA_PENDING))
  return 1;

 return 0;
}
