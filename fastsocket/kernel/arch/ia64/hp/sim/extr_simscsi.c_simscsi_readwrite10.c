
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__* cmnd; } ;


 int simscsi_sg_readwrite (struct scsi_cmnd*,int,unsigned long) ;

__attribute__((used)) static void
simscsi_readwrite10 (struct scsi_cmnd *sc, int mode)
{
 unsigned long offset;

 offset = (((unsigned long)sc->cmnd[2] << 24)
  | ((unsigned long)sc->cmnd[3] << 16)
  | ((unsigned long)sc->cmnd[4] << 8)
  | ((unsigned long)sc->cmnd[5] << 0))*512UL;
 simscsi_sg_readwrite(sc, mode, offset);
}
