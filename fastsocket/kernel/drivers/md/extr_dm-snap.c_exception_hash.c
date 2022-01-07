
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_exception_table {int hash_shift; int hash_mask; } ;
typedef int chunk_t ;



__attribute__((used)) static uint32_t exception_hash(struct dm_exception_table *et, chunk_t chunk)
{
 return (chunk >> et->hash_shift) & et->hash_mask;
}
