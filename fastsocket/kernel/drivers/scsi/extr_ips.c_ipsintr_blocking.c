
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* cdb; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_8__ {scalar_t__ waitflag; scalar_t__ cmd_in_progress; } ;
typedef TYPE_2__ ips_ha_t ;


 scalar_t__ FALSE ;
 int METHOD_TRACE (char*,int) ;
 scalar_t__ TRUE ;
 int ips_freescb (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
ipsintr_blocking(ips_ha_t * ha, ips_scb_t * scb)
{
 METHOD_TRACE("ipsintr_blocking", 2);

 ips_freescb(ha, scb);
 if ((ha->waitflag == TRUE) && (ha->cmd_in_progress == scb->cdb[0])) {
  ha->waitflag = FALSE;

  return;
 }
}
