
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipz_queue {int dummy; } ;


 void* ipz_qeit_get_inc (struct ipz_queue*) ;
 scalar_t__ ipz_qeit_is_valid (struct ipz_queue*) ;

__attribute__((used)) static inline void *ipz_qeit_get_inc_valid(struct ipz_queue *queue)
{
 return ipz_qeit_is_valid(queue) ? ipz_qeit_get_inc(queue) : ((void*)0);
}
