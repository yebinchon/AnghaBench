
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m68k_serial {scalar_t__ magic; } ;


 scalar_t__ SERIAL_MAGIC ;
 int printk (char const*,char*,char const*) ;

__attribute__((used)) static inline int serial_paranoia_check(struct m68k_serial *info,
     char *name, const char *routine)
{
 return 0;
}
