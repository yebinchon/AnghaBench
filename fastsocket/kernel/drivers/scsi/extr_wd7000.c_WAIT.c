
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long WAITnexttimeout ;
 unsigned int inb (unsigned int) ;
 unsigned long jiffies ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

__attribute__((used)) static inline short WAIT(unsigned port, unsigned mask, unsigned allof, unsigned noneof)
{
 unsigned WAITbits;
 unsigned long WAITtimeout = jiffies + WAITnexttimeout;

 while (time_before_eq(jiffies, WAITtimeout)) {
  WAITbits = inb(port) & mask;

  if (((WAITbits & allof) == allof) && ((WAITbits & noneof) == 0))
   return (0);
 }

 return (1);
}
