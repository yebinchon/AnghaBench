
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc390_srb {int dummy; } ;
struct dc390_acb {int dummy; } ;


 int READ_DIRECTION ;
 int dc390_DataIO_Comm (struct dc390_acb*,struct dc390_srb*,int ) ;

__attribute__((used)) static void
dc390_DataInPhase( struct dc390_acb* pACB, struct dc390_srb* pSRB, u8 *psstatus)
{
    dc390_DataIO_Comm (pACB, pSRB, READ_DIRECTION);
}
