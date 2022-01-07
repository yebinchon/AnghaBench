
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (int ) ;
 int isapnp_rdp ;

__attribute__((used)) static inline unsigned char read_data(void)
{
 unsigned char val = inb(isapnp_rdp);
 return val;
}
