
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mtu2_priv {int dummy; } ;


 int sh_mtu2_register_clockevent (struct sh_mtu2_priv*,char*,unsigned long) ;

__attribute__((used)) static int sh_mtu2_register(struct sh_mtu2_priv *p, char *name,
       unsigned long clockevent_rating)
{
 if (clockevent_rating)
  sh_mtu2_register_clockevent(p, name, clockevent_rating);

 return 0;
}
