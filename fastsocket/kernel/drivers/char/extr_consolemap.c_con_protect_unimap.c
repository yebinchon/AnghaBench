
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__* vc_uni_pagedir_loc; } ;
struct uni_pagedir {int readonly; } ;



void con_protect_unimap(struct vc_data *vc, int rdonly)
{
 struct uni_pagedir *p = (struct uni_pagedir *)*vc->vc_uni_pagedir_loc;

 if (p)
  p->readonly = rdonly;
}
