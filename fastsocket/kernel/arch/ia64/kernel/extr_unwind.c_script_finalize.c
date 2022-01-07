
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_state_record {int pr_val; int pr_mask; } ;
struct unw_script {int pr_val; int pr_mask; } ;



__attribute__((used)) static void
script_finalize (struct unw_script *script, struct unw_state_record *sr)
{
 script->pr_mask = sr->pr_mask;
 script->pr_val = sr->pr_val;






}
