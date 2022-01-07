
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct user_desc {int limit; int seg_32bit; int limit_in_pages; int useable; int base_addr; } ;
struct TYPE_2__ {struct desc_struct* tls_array; } ;
struct task_struct {TYPE_1__ thread; } ;
struct desc_struct {int dummy; } ;


 int fill_ldt (struct desc_struct*,struct user_desc*) ;

__attribute__((used)) static inline void set_32bit_tls(struct task_struct *t, int tls, u32 addr)
{
 struct user_desc ud = {
  .base_addr = addr,
  .limit = 0xfffff,
  .seg_32bit = 1,
  .limit_in_pages = 1,
  .useable = 1,
 };
 struct desc_struct *desc = t->thread.tls_array;
 desc += tls;
 fill_ldt(desc, &ud);
}
