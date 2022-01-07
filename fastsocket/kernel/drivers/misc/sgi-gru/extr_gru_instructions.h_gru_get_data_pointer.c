
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_CACHE_LINE_BYTES ;
 int GRU_DS_BASE ;

__attribute__((used)) static inline void *gru_get_data_pointer(void *gseg, int index)
{
 return gseg + GRU_DS_BASE + index * GRU_CACHE_LINE_BYTES;
}
