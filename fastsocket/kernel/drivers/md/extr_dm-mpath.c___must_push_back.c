
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {scalar_t__ queue_if_no_path; scalar_t__ saved_queue_if_no_path; int ti; } ;


 scalar_t__ dm_noflush_suspending (int ) ;

__attribute__((used)) static int __must_push_back(struct multipath *m)
{
 return (m->queue_if_no_path != m->saved_queue_if_no_path &&
  dm_noflush_suspending(m->ti));
}
