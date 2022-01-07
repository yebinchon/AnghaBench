
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max3100_port {int dummy; } ;


 int max3100_do_parity (struct max3100_port*,int) ;

__attribute__((used)) static int max3100_check_parity(struct max3100_port *s, u16 c)
{
 return max3100_do_parity(s, c) == ((c >> 8) & 1);
}
