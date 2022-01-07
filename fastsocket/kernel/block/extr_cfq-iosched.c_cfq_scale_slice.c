
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cfq_group {int weight; } ;


 int BLKIO_WEIGHT_DEFAULT ;
 unsigned long CFQ_SERVICE_SHIFT ;
 int do_div (int,int ) ;

__attribute__((used)) static inline u64 cfq_scale_slice(unsigned long delta, struct cfq_group *cfqg)
{
 u64 d = delta << CFQ_SERVICE_SHIFT;

 d = d * BLKIO_WEIGHT_DEFAULT;
 do_div(d, cfqg->weight);
 return d;
}
