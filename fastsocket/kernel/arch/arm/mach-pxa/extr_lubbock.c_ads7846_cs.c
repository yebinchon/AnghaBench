
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PXA2XX_CS_ASSERT ;
 int lubbock_set_misc_wr (unsigned int const,unsigned int const) ;

__attribute__((used)) static void ads7846_cs(u32 command)
{
 static const unsigned TS_nCS = 1 << 11;
 lubbock_set_misc_wr(TS_nCS, (command == PXA2XX_CS_ASSERT) ? 0 : TS_nCS);
}
