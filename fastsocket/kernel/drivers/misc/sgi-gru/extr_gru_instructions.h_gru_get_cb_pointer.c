
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_CB_BASE ;
 int GRU_HANDLE_STRIDE ;

__attribute__((used)) static inline void *gru_get_cb_pointer(void *gseg,
            int index)
{
 return gseg + GRU_CB_BASE + index * GRU_HANDLE_STRIDE;
}
