
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__* vc_uni_pagedir_loc; } ;
struct uni_pagedir {scalar_t__ refcount; } ;


 int con_release_unimap (struct uni_pagedir*) ;
 int kfree (struct uni_pagedir*) ;

void con_free_unimap(struct vc_data *vc)
{
 struct uni_pagedir *p;

 p = (struct uni_pagedir *)*vc->vc_uni_pagedir_loc;
 if (!p)
  return;
 *vc->vc_uni_pagedir_loc = 0;
 if (--p->refcount)
  return;
 con_release_unimap(p);
 kfree(p);
}
