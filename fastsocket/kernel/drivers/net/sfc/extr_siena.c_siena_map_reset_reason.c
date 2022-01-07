
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reset_type { ____Placeholder_reset_type } reset_type ;


 int RESET_TYPE_RECOVER_OR_ALL ;

__attribute__((used)) static enum reset_type siena_map_reset_reason(enum reset_type reason)
{
 return RESET_TYPE_RECOVER_OR_ALL;
}
