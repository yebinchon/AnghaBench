
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;
struct pstore_info {int dummy; } ;
typedef enum pstore_type_id { ____Placeholder_pstore_type_id } pstore_type_id ;



__attribute__((used)) static int efi_pstore_erase(enum pstore_type_id type, u64 id, int count,
       struct timespec time, struct pstore_info *psi)
{
 return 0;
}
