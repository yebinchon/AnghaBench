
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct petp {int dummy; } ;


 int kfree (struct petp*) ;

void t1_tp_destroy(struct petp *tp)
{
 kfree(tp);
}
