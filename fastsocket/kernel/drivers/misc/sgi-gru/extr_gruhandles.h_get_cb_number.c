
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long GRU_CB_BASE ;
 unsigned long GRU_GSEG_PAGESIZE ;
 unsigned long GRU_HANDLE_STRIDE ;

__attribute__((used)) static inline unsigned long get_cb_number(void *cb)
{
 return (((unsigned long)cb - GRU_CB_BASE) % GRU_GSEG_PAGESIZE) /
     GRU_HANDLE_STRIDE;
}
