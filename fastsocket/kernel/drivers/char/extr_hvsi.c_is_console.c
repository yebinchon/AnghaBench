
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_struct {int flags; } ;


 int HVSI_CONSOLE ;

__attribute__((used)) static inline int is_console(struct hvsi_struct *hp)
{
 return hp->flags & HVSI_CONSOLE;
}
