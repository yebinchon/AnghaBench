
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_eacr {scalar_t__ e0; scalar_t__ e1; int dp; } ;
typedef int eacr ;


 struct etr_eacr etr_eacr ;
 int etr_setr (struct etr_eacr*) ;
 int etr_tolec ;
 int get_clock () ;
 scalar_t__ memcmp (struct etr_eacr*,struct etr_eacr*,int) ;

__attribute__((used)) static void etr_update_eacr(struct etr_eacr eacr)
{
 int dp_changed;

 if (memcmp(&etr_eacr, &eacr, sizeof(eacr)) == 0)

  return;




 dp_changed = etr_eacr.e0 > eacr.e0 || etr_eacr.e1 > eacr.e1 ||
  (etr_eacr.dp ^ eacr.dp) != 0;
 etr_eacr = eacr;
 etr_setr(&etr_eacr);
 if (dp_changed)
  etr_tolec = get_clock();
}
