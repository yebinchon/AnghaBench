
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 int Z2RAM_CHUNKSIZE ;
 scalar_t__ amiga_chip_alloc (int,char*) ;
 int amiga_chip_avail () ;
 int chip_count ;
 scalar_t__* z2ram_map ;
 size_t z2ram_size ;

__attribute__((used)) static void
get_chipram( void )
{

    while ( amiga_chip_avail() > ( Z2RAM_CHUNKSIZE * 4 ) )
    {
 chip_count++;
 z2ram_map[ z2ram_size ] =
     (u_long)amiga_chip_alloc( Z2RAM_CHUNKSIZE, "z2ram" );

 if ( z2ram_map[ z2ram_size ] == 0 )
 {
     break;
 }

 z2ram_size++;
    }

    return;
}
