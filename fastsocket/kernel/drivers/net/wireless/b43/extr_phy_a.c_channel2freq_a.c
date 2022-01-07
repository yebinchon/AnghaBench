
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int B43_WARN_ON (int) ;

__attribute__((used)) static inline u16 channel2freq_a(u8 channel)
{
 B43_WARN_ON(channel > 200);

 return (5000 + 5 * channel);
}
