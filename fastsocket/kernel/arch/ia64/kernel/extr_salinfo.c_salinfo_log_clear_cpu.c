
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {int type; } ;


 int ia64_sal_clear_state_info (int ) ;

__attribute__((used)) static void
salinfo_log_clear_cpu(void *context)
{
 struct salinfo_data *data = context;
 ia64_sal_clear_state_info(data->type);
}
