
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long clock_comparator; } ;


 TYPE_1__ S390_lowcore ;
 int set_clock_comparator (unsigned long long) ;

__attribute__((used)) static void fixup_clock_comparator(unsigned long long delta)
{

 if (S390_lowcore.clock_comparator == -1ULL)
  return;
 S390_lowcore.clock_comparator += delta;
 set_clock_comparator(S390_lowcore.clock_comparator);
}
