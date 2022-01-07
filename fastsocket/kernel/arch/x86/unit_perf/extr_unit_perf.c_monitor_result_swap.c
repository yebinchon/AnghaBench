
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor_result {int dummy; } ;



__attribute__((used)) static void monitor_result_swap(void *a, void *b, int size)
{
 struct monitor_result *s1 = a;
 struct monitor_result *s2 = b;
 struct monitor_result tmp = *s1;

 *s1 = *s2;
 *s2 = tmp;
}
