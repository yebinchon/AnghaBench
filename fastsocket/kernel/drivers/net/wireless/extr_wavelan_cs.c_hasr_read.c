
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;


 int HASR (int ) ;
 int inb (int ) ;

__attribute__((used)) static inline u_char
hasr_read(u_long base)
{
  return(inb(HASR(base)));
}
