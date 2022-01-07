
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int level; } ;
typedef TYPE_1__ debug_info_t ;



__attribute__((used)) static inline int qdio_dbf_passes(debug_info_t *dbf_grp, int level)
{
 return (level <= dbf_grp->level);
}
