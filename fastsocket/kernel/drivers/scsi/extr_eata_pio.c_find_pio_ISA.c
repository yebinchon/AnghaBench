
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_conf {int dummy; } ;


 scalar_t__* ISAbases ;
 int MAXISA ;
 int get_pio_conf_PIO (scalar_t__,struct get_conf*) ;
 int register_pio_HBA (scalar_t__,struct get_conf*,int *) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void find_pio_ISA(struct get_conf *buf)
{
 int i;

 for (i = 0; i < MAXISA; i++) {
  if (!ISAbases[i])
   continue;
  if (!get_pio_conf_PIO(ISAbases[i], buf))
   continue;
  if (!register_pio_HBA(ISAbases[i], buf, ((void*)0)))
   release_region(ISAbases[i], 9);
  else
   ISAbases[i] = 0;
 }
 return;
}
