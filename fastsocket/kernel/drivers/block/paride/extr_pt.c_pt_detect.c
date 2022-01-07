
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int present; int drive; int * pi; int name; int * bufptr; scalar_t__ last_sense; scalar_t__ flags; int available; int pia; } ;


 int* DU ;
 size_t D_DLY ;
 size_t D_MOD ;
 size_t D_PRO ;
 size_t D_PRT ;
 size_t D_SLV ;
 size_t D_UNI ;
 int PI_PT ;
 int PT_NAMELEN ;
 int PT_UNITS ;
 int PT_VERSION ;
 int atomic_set (int *,int) ;
 int major ;
 char* name ;
 scalar_t__ pi_init (int *,int,int,int,int,int,int,int ,int ,int ,int ) ;
 int pi_release (int *) ;
 int printk (char*,char*,...) ;
 struct pt_unit* pt ;
 int pt_probe (struct pt_unit*) ;
 int pt_scratch ;
 int snprintf (int ,int ,char*,char*,int) ;
 int verbose ;

__attribute__((used)) static int pt_detect(void)
{
 struct pt_unit *tape;
 int specified = 0, found = 0;
 int unit;

 printk("%s: %s version %s, major %d\n", name, name, PT_VERSION, major);

 specified = 0;
 for (unit = 0; unit < PT_UNITS; unit++) {
  struct pt_unit *tape = &pt[unit];
  tape->pi = &tape->pia;
  atomic_set(&tape->available, 1);
  tape->flags = 0;
  tape->last_sense = 0;
  tape->present = 0;
  tape->bufptr = ((void*)0);
  tape->drive = DU[D_SLV];
  snprintf(tape->name, PT_NAMELEN, "%s%d", name, unit);
  if (!DU[D_PRT])
   continue;
  specified++;
  if (pi_init(tape->pi, 0, DU[D_PRT], DU[D_MOD], DU[D_UNI],
       DU[D_PRO], DU[D_DLY], pt_scratch, PI_PT,
       verbose, tape->name)) {
   if (!pt_probe(tape)) {
    tape->present = 1;
    found++;
   } else
    pi_release(tape->pi);
  }
 }
 if (specified == 0) {
  tape = pt;
  if (pi_init(tape->pi, 1, -1, -1, -1, -1, -1, pt_scratch,
       PI_PT, verbose, tape->name)) {
   if (!pt_probe(tape)) {
    tape->present = 1;
    found++;
   } else
    pi_release(tape->pi);
  }

 }
 if (found)
  return 0;

 printk("%s: No ATAPI tape drive detected\n", name);
 return -1;
}
