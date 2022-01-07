
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bteinfo_s {int dummy; } ;
struct TYPE_3__ {struct bteinfo_s* bte_if; } ;
typedef TYPE_1__ nodepda_t ;
typedef int nasid_t ;


 TYPE_1__* NODEPDA (int) ;
 int nasid_to_cnodeid (int ) ;

__attribute__((used)) static struct bteinfo_s *bte_if_on_node(nasid_t nasid, int interface)
{
 nodepda_t *tmp_nodepda;

 if (nasid_to_cnodeid(nasid) == -1)
  return (struct bteinfo_s *)((void*)0);

 tmp_nodepda = NODEPDA(nasid_to_cnodeid(nasid));
 return &tmp_nodepda->bte_if[interface];

}
