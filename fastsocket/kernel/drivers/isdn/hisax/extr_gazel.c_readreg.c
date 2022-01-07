
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_char ;


 int bytein (scalar_t__) ;

__attribute__((used)) static inline u_char
readreg(unsigned int adr, u_short off)
{
 return bytein(adr + off);
}
