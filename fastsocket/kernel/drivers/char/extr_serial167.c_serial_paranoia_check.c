
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_port {scalar_t__ magic; } ;


 scalar_t__ CYCLADES_MAGIC ;
 size_t NR_PORTS ;
 struct cyclades_port* cy_port ;
 int printk (char*,char*,char const*) ;

__attribute__((used)) static inline int serial_paranoia_check(struct cyclades_port *info, char *name,
  const char *routine)
{
 return 0;
}
