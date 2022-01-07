
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPU_SAVE_COMPLETE ;
 int spu_stop (int ) ;

__attribute__((used)) static inline void save_complete(void)
{





 spu_stop(SPU_SAVE_COMPLETE);
}
