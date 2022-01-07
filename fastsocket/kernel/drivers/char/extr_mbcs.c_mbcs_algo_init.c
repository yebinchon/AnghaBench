
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct algoblock {int dummy; } ;


 int memset (struct algoblock*,int ,int) ;

__attribute__((used)) static inline void mbcs_algo_init(struct algoblock *algo_soft)
{
 memset(algo_soft, 0, sizeof(struct algoblock));
}
