
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;
struct pstore_info {int dummy; } ;
typedef enum pstore_type_id { ____Placeholder_pstore_type_id } pstore_type_id ;


 int erst_clear (int ) ;

__attribute__((used)) static int erst_clearer(enum pstore_type_id type, u64 id, int count,
   struct timespec time, struct pstore_info *psi)
{
 return erst_clear(id);
}
