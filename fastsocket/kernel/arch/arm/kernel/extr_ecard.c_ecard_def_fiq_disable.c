
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecard_t ;


 int panic (char*) ;

__attribute__((used)) static void ecard_def_fiq_disable(ecard_t *ec, int fiqnr)
{
 panic("ecard_def_fiq_disable called - impossible");
}
