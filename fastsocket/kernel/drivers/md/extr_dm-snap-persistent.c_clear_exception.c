
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pstore {int dummy; } ;
struct disk_exception {scalar_t__ new_chunk; scalar_t__ old_chunk; } ;


 struct disk_exception* get_exception (struct pstore*,int ) ;

__attribute__((used)) static void clear_exception(struct pstore *ps, uint32_t index)
{
 struct disk_exception *de = get_exception(ps, index);


 de->old_chunk = 0;
 de->new_chunk = 0;
}
