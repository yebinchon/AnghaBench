
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {scalar_t__ a; scalar_t__ b; } ;


 int write_gdt_entry (struct desc_struct*,int,struct desc_struct*,int ) ;

__attribute__((used)) static inline void vmi_maybe_load_tls(struct desc_struct *gdt, int nr, struct desc_struct *new)
{
 if (gdt[nr].a != new->a || gdt[nr].b != new->b)
  write_gdt_entry(gdt, nr, new, 0);
}
