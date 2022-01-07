
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_selector_type {int dummy; } ;
struct ps_internal {struct path_selector_type pst; } ;


 int GFP_KERNEL ;
 struct ps_internal* kzalloc (int,int ) ;

__attribute__((used)) static struct ps_internal *_alloc_path_selector(struct path_selector_type *pst)
{
 struct ps_internal *psi = kzalloc(sizeof(*psi), GFP_KERNEL);

 if (psi)
  psi->pst = *pst;

 return psi;
}
