
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* read_cachesize ) (struct ath_common*,int*) ;} ;


 int stub1 (struct ath_common*,int*) ;

__attribute__((used)) static inline void ath_read_cachesize(struct ath_common *common, int *csz)
{
 common->bus_ops->read_cachesize(common, csz);
}
