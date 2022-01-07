
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speed_down_verdict_arg {scalar_t__ since; int * nr_errors; int xfer_ok; } ;
struct ata_ering_entry {scalar_t__ timestamp; int err_mask; int eflags; } ;


 int ata_eh_categorize_error (int ,int ,int *) ;

__attribute__((used)) static int speed_down_verdict_cb(struct ata_ering_entry *ent, void *void_arg)
{
 struct speed_down_verdict_arg *arg = void_arg;
 int cat;

 if (ent->timestamp < arg->since)
  return -1;

 cat = ata_eh_categorize_error(ent->eflags, ent->err_mask,
          &arg->xfer_ok);
 arg->nr_errors[cat]++;

 return 0;
}
