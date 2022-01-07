
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int suspend_time; } ;
struct spu {int dummy; } ;


 int get_cycles () ;

__attribute__((used)) static inline void save_timebase(struct spu_state *csa, struct spu *spu)
{




 csa->suspend_time = get_cycles();
}
