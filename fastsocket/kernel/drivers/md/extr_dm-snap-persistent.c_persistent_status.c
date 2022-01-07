
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store {scalar_t__ chunk_size; } ;
typedef int status_type_t ;


 int DMEMIT (char*,unsigned long long) ;



__attribute__((used)) static unsigned persistent_status(struct dm_exception_store *store,
      status_type_t status, char *result,
      unsigned maxlen)
{
 unsigned sz = 0;

 switch (status) {
 case 129:
  break;
 case 128:
  DMEMIT(" P %llu", (unsigned long long)store->chunk_size);
 }

 return sz;
}
