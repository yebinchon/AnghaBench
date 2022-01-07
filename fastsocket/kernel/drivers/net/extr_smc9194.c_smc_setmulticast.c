
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;
typedef int multicast_table ;


 scalar_t__ MULTICAST1 ;
 int SMC_SELECT_BANK (int) ;
 int ether_crc_le (int,int*) ;
 int memset (unsigned char*,int ,int) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static void smc_setmulticast( int ioaddr, int count, struct dev_mc_list * addrs ) {
 int i;
 unsigned char multicast_table[ 8 ];
 struct dev_mc_list * cur_addr;

 unsigned char invert3[] = { 0, 4, 2, 6, 1, 5, 3, 7 };


 memset( multicast_table, 0, sizeof( multicast_table ) );

 cur_addr = addrs;
 for ( i = 0; i < count ; i ++, cur_addr = cur_addr->next ) {
  int position;


  if ( !cur_addr )
   break;


  if ( !( *cur_addr->dmi_addr & 1 ) )
   continue;


  position = ether_crc_le(6, cur_addr->dmi_addr) & 0x3f;


  multicast_table[invert3[position&7]] |=
     (1<<invert3[(position>>3)&7]);

 }

 SMC_SELECT_BANK( 3 );

 for ( i = 0; i < 8 ; i++ ) {
  outb( multicast_table[i], ioaddr + MULTICAST1 + i );
 }
}
