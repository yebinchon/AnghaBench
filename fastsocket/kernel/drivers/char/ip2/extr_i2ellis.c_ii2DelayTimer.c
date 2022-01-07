
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msleep_interruptible (unsigned int) ;

__attribute__((used)) static void
ii2DelayTimer(unsigned int mseconds)
{
 msleep_interruptible(mseconds);
}
