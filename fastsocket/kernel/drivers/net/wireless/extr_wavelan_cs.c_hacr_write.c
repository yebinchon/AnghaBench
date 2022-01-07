
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int HACR (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void
hacr_write(u_long base,
    u_char hacr)
{
  outb(hacr, HACR(base));
}
