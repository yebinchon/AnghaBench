
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;


 scalar_t__ bytein (scalar_t__) ;

__attribute__((used)) static inline u_char
readreg(unsigned int adr, u_char off)
{
 return (bytein(adr + off));
}
