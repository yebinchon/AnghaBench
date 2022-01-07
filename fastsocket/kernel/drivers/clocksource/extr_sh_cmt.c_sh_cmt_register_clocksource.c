
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {char* name; unsigned long rating; int flags; int mask; int disable; int enable; int read; } ;
struct sh_cmt_priv {struct clocksource cs; } ;


 int CLOCKSOURCE_MASK (int) ;
 int CLOCK_SOURCE_IS_CONTINUOUS ;
 int clocksource_register (struct clocksource*) ;
 int pr_info (char*,char*) ;
 int sh_cmt_clocksource_disable ;
 int sh_cmt_clocksource_enable ;
 int sh_cmt_clocksource_read ;

__attribute__((used)) static int sh_cmt_register_clocksource(struct sh_cmt_priv *p,
           char *name, unsigned long rating)
{
 struct clocksource *cs = &p->cs;

 cs->name = name;
 cs->rating = rating;
 cs->read = sh_cmt_clocksource_read;
 cs->enable = sh_cmt_clocksource_enable;
 cs->disable = sh_cmt_clocksource_disable;
 cs->mask = CLOCKSOURCE_MASK(sizeof(unsigned long) * 8);
 cs->flags = CLOCK_SOURCE_IS_CONTINUOUS;
 pr_info("sh_cmt: %s used as clock source\n", cs->name);
 clocksource_register(cs);
 return 0;
}
