
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_data {int* cfq_slice; } ;


 int const CFQ_SLICE_SCALE ;
 unsigned short IOPRIO_BE_NR ;
 int WARN_ON (int) ;

__attribute__((used)) static inline int cfq_prio_slice(struct cfq_data *cfqd, bool sync,
     unsigned short prio)
{
 const int base_slice = cfqd->cfq_slice[sync];

 WARN_ON(prio >= IOPRIO_BE_NR);

 return base_slice + (base_slice/CFQ_SLICE_SCALE * (4 - prio));
}
