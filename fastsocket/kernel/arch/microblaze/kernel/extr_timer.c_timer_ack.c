
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TCSR0 ;
 scalar_t__ TIMER_BASE ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static inline void timer_ack(void)
{
 out_be32(TIMER_BASE + TCSR0, in_be32(TIMER_BASE + TCSR0));
}
