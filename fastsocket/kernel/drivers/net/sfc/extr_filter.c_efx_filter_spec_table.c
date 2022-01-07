
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_table {int dummy; } ;
struct efx_filter_state {struct efx_filter_table* table; } ;
struct efx_filter_spec {scalar_t__ type; } ;


 scalar_t__ EFX_FILTER_UNSPEC ;
 size_t efx_filter_spec_table_id (struct efx_filter_spec const*) ;

__attribute__((used)) static struct efx_filter_table *
efx_filter_spec_table(struct efx_filter_state *state,
        const struct efx_filter_spec *spec)
{
 if (spec->type == EFX_FILTER_UNSPEC)
  return ((void*)0);
 else
  return &state->table[efx_filter_spec_table_id(spec)];
}
