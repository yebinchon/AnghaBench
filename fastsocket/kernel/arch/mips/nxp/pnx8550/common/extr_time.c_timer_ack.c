
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpj ;
 int write_c0_compare (int ) ;

__attribute__((used)) static inline void timer_ack(void)
{
 write_c0_compare(cpj);
}
