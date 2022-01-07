
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int drive; } ;


 int pt_identify (struct pt_unit*) ;
 int pt_reset (struct pt_unit*) ;

__attribute__((used)) static int pt_probe(struct pt_unit *tape)
{
 if (tape->drive == -1) {
  for (tape->drive = 0; tape->drive <= 1; tape->drive++)
   if (!pt_reset(tape))
    return pt_identify(tape);
 } else {
  if (!pt_reset(tape))
   return pt_identify(tape);
 }
 return -1;
}
