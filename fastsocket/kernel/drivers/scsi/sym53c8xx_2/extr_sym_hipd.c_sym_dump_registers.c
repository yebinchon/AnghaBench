
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct sym_hcb {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int INB (struct sym_hcb*,int ) ;
 int INW (struct sym_hcb*,int ) ;
 int nc_dstat ;
 int nc_sist ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;
 int sym_log_hard_error (struct Scsi_Host*,int ,int ) ;

void sym_dump_registers(struct Scsi_Host *shost)
{
 struct sym_hcb *np = sym_get_hcb(shost);
 u_short sist;
 u_char dstat;

 sist = INW(np, nc_sist);
 dstat = INB(np, nc_dstat);
 sym_log_hard_error(shost, sist, dstat);
}
