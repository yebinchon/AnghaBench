
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {int dummy; } ;
typedef TYPE_3__* i2eBordStrPtr ;
struct TYPE_5__ {int porID; } ;
struct TYPE_6__ {TYPE_1__ e; } ;
struct TYPE_7__ {int* i2eChannelMap; int i2eDataWidth16; TYPE_2__ i2ePom; } ;


 int ABS_BIGGEST_BOX ;
 int ABS_MAX_BOXES ;
 int IP2_CALLOUT_MAJOR ;
 int IP2_IPL_MAJOR ;
 int IP2_MAX_BOARDS ;
 int IP2_TTY_MAJOR ;




 int POR_ID_RESERVED ;
 TYPE_3__** i2BoardPtrTable ;
 int pcVersion ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int ip2_proc_show(struct seq_file *m, void *v)
{
 int i, j, box;
 int boxes = 0;
 int ports = 0;
 int tports = 0;
 i2eBordStrPtr pB;
 char *sep;

 seq_printf(m, "ip2info: 1.0 driver: %s\n", pcVersion);
 seq_printf(m, "Driver: SMajor=%d CMajor=%d IMajor=%d MaxBoards=%d MaxBoxes=%d MaxPorts=%d\n",
   IP2_TTY_MAJOR, IP2_CALLOUT_MAJOR, IP2_IPL_MAJOR,
   IP2_MAX_BOARDS, ABS_MAX_BOXES, ABS_BIGGEST_BOX);

 for( i = 0; i < IP2_MAX_BOARDS; ++i ) {

  boxes = 0;
  pB = i2BoardPtrTable[i];
  if( pB ) {
   switch( pB->i2ePom.e.porID & ~POR_ID_RESERVED )
   {
   case 131:
    seq_printf(m, "Board %d: EX ports=", i);
    sep = "";
    for( box = 0; box < ABS_MAX_BOXES; ++box )
    {
     ports = 0;

     if( pB->i2eChannelMap[box] != 0 ) ++boxes;
     for( j = 0; j < ABS_BIGGEST_BOX; ++j )
     {
      if( pB->i2eChannelMap[box] & 1<< j ) {
       ++ports;
      }
     }
     seq_printf(m, "%s%d", sep, ports);
     sep = ",";
     tports += ports;
    }
    seq_printf(m, " boxes=%d width=%d", boxes, pB->i2eDataWidth16 ? 16 : 8);
    break;

   case 130:
    seq_printf(m, "Board %d: ISA-4 ports=4 boxes=1", i);
    tports = ports = 4;
    break;

   case 129:
    seq_printf(m, "Board %d: ISA-8-std ports=8 boxes=1", i);
    tports = ports = 8;
    break;

   case 128:
    seq_printf(m, "Board %d: ISA-8-RJ11 ports=8 boxes=1", i);
    tports = ports = 8;
    break;

   default:
    seq_printf(m, "Board %d: unknown", i);

    tports = ports = 0;
   }

  } else {

   seq_printf(m, "Board %d: vacant", i);
   tports = ports = 0;
  }

  if( tports ) {
   seq_puts(m, " minors=");
   sep = "";
   for ( box = 0; box < ABS_MAX_BOXES; ++box )
   {
    for ( j = 0; j < ABS_BIGGEST_BOX; ++j )
    {
     if ( pB->i2eChannelMap[box] & (1 << j) )
     {
      seq_printf(m, "%s%d", sep,
       j + ABS_BIGGEST_BOX *
       (box+i*ABS_MAX_BOXES));
      sep = ",";
     }
    }
   }
  }
  seq_putc(m, '\n');
 }
 return 0;
 }
