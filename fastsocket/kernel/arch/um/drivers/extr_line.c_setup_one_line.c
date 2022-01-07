
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int init_pri; int valid; char* init_str; int count_lock; int * tty; } ;


 int EINVAL ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int setup_one_line(struct line *lines, int n, char *init, int init_prio,
     char **error_out)
{
 struct line *line = &lines[n];
 int err = -EINVAL;

 spin_lock(&line->count_lock);

 if (line->tty != ((void*)0)) {
  *error_out = "Device is already open";
  goto out;
 }

 if (line->init_pri <= init_prio) {
  line->init_pri = init_prio;
  if (!strcmp(init, "none"))
   line->valid = 0;
  else {
   line->init_str = init;
   line->valid = 1;
  }
 }
 err = 0;
out:
 spin_unlock(&line->count_lock);
 return err;
}
