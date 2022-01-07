
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u16 ;
struct TYPE_2__ {unsigned long long clock_comparator; } ;


 TYPE_1__ S390_lowcore ;
 int set_clock_comparator (unsigned long long) ;

__attribute__((used)) static void clock_comparator_interrupt(__u16 code)
{
 if (S390_lowcore.clock_comparator == -1ULL)
  set_clock_comparator(S390_lowcore.clock_comparator);
}
