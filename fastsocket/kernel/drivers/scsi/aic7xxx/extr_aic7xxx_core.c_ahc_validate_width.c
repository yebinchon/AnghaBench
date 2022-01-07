
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct ahc_softc {int features; } ;
struct TYPE_3__ {scalar_t__ width; } ;
struct TYPE_4__ {scalar_t__ width; } ;
struct ahc_initiator_tinfo {TYPE_1__ goal; TYPE_2__ user; } ;
typedef scalar_t__ role_t ;


 int AHC_WIDE ;
 int MSG_EXT_WDTR_BUS_16_BIT ;

 scalar_t__ ROLE_TARGET ;
 int min (int,int) ;

__attribute__((used)) static void
ahc_validate_width(struct ahc_softc *ahc, struct ahc_initiator_tinfo *tinfo,
     u_int *bus_width, role_t role)
{
 switch (*bus_width) {
 default:
  if (ahc->features & AHC_WIDE) {

   *bus_width = MSG_EXT_WDTR_BUS_16_BIT;
   break;
  }

 case 128:
  *bus_width = 128;
  break;
 }
 if (tinfo != ((void*)0)) {
  if (role == ROLE_TARGET)
   *bus_width = min((u_int)tinfo->user.width, *bus_width);
  else
   *bus_width = min((u_int)tinfo->goal.width, *bus_width);
 }
}
