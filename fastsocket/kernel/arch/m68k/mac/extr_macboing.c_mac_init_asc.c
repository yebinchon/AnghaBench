
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ident; } ;
 int mac_asc_inited ;
 void* mac_asc_regs ;
 int mac_asc_samplespersec ;
 int* mac_asc_wave_tab ;
 int * mac_av_start_bell ;
 int * mac_quadra_start_bell ;
 int * mac_special_bell ;
 TYPE_1__* macintosh_config ;

__attribute__((used)) static void mac_init_asc( void )
{
 int i;
 switch ( macintosh_config->ident )
 {
  case 136:



   mac_asc_regs = ( void* )0x50010000;
   break;




  case 134:
  case 135:
   mac_special_bell = mac_quadra_start_bell;
   mac_asc_samplespersec = 22150;
   break;
  case 137:
  case 130:
   mac_special_bell = mac_av_start_bell;
   break;
  case 133:
  case 132:
  case 131:
  case 129:
  case 128:



   mac_special_bell = ((void*)0);
   break;
  default:



   mac_special_bell = ((void*)0);
   break;
 }





 for ( i = 0; i < 0x400; i++ )
 {
  mac_asc_wave_tab[ i ] = i / 4;
  mac_asc_wave_tab[ i + 0x400 ] = 0xFF - i / 4;
 }
 mac_asc_inited = 1;
}
