
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;
struct pstore_info {int dummy; } ;
typedef int ssize_t ;
typedef enum pstore_type_id { ____Placeholder_pstore_type_id } pstore_type_id ;



__attribute__((used)) static ssize_t efi_pstore_read(u64 *id, enum pstore_type_id *type, int *count,
          struct timespec *timespec,
          char **buf, struct pstore_info *psi)
{
 return -1;
}
