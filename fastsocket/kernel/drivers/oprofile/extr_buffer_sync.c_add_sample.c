
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_sample {int event; int eip; } ;
struct mm_struct {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {int sample_lost_no_mapping; int sample_lost_no_mm; } ;


 unsigned long INVALID_COOKIE ;
 int add_cookie_switch (unsigned long) ;
 int add_sample_entry (int ,int ) ;
 int atomic_inc (int *) ;
 unsigned long last_cookie ;
 unsigned long lookup_dcookie (struct mm_struct*,int ,int *) ;
 TYPE_1__ oprofile_stats ;

__attribute__((used)) static int
add_sample(struct mm_struct *mm, struct op_sample *s, int in_kernel)
{
 unsigned long cookie;
 off_t offset;

 if (in_kernel) {
  add_sample_entry(s->eip, s->event);
  return 1;
 }



 if (!mm) {
  atomic_inc(&oprofile_stats.sample_lost_no_mm);
  return 0;
 }

 cookie = lookup_dcookie(mm, s->eip, &offset);

 if (cookie == INVALID_COOKIE) {
  atomic_inc(&oprofile_stats.sample_lost_no_mapping);
  return 0;
 }

 if (cookie != last_cookie) {
  add_cookie_switch(cookie);
  last_cookie = cookie;
 }

 add_sample_entry(offset, s->event);

 return 1;
}
