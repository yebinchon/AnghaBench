
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_queue {int read_ptr; int write_ptr; scalar_t__ n_window; scalar_t__ n_bd; } ;



__attribute__((used)) static int iwl_queue_space(const struct iwl_queue *q)
{
 int s = q->read_ptr - q->write_ptr;

 if (q->read_ptr > q->write_ptr)
  s -= q->n_bd;

 if (s <= 0)
  s += q->n_window;

 s -= 2;
 if (s < 0)
  s = 0;
 return s;
}
