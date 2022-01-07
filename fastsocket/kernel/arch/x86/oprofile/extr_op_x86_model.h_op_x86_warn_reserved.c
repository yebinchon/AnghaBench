
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warning (char*,int) ;

__attribute__((used)) static inline void op_x86_warn_reserved(int counter)
{
 pr_warning("oprofile: counter #%d is already reserved\n", counter);
}
