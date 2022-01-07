
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;


 char* cvmx_board_type_to_string (int ) ;
 TYPE_1__* octeon_bootinfo ;
 char* octeon_model_get_string (int ) ;
 int read_c0_prid () ;
 int sprintf (char*,char*,char*,char*) ;

const char *octeon_board_type_string(void)
{
 static char name[80];
 sprintf(name, "%s (%s)",
  cvmx_board_type_to_string(octeon_bootinfo->board_type),
  octeon_model_get_string(read_c0_prid()));
 return name;
}
