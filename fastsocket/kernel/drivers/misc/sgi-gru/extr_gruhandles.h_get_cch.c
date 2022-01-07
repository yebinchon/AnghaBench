
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_context_configuration_handle {int dummy; } ;


 int GRU_CCH_BASE ;
 int GRU_HANDLE_STRIDE ;

__attribute__((used)) static inline struct gru_context_configuration_handle *get_cch(void *base,
     int ctxnum)
{
 return (struct gru_context_configuration_handle *)(base +
    GRU_CCH_BASE + ctxnum * GRU_HANDLE_STRIDE);
}
