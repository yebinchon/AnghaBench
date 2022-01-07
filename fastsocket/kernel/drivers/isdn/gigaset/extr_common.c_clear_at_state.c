
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_state_t {int dummy; } ;


 int free_strings (struct at_state_t*) ;

__attribute__((used)) static void clear_at_state(struct at_state_t *at_state)
{
 free_strings(at_state);
}
