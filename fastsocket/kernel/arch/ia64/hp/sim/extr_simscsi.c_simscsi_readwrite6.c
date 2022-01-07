
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;


 int simscsi_sg_readwrite (struct scsi_cmnd*,int,unsigned long) ;

__attribute__((used)) static void
simscsi_readwrite6 (struct scsi_cmnd *sc, int mode)
{
 unsigned long offset;

 offset = (((sc->cmnd[1] & 0x1f) << 16) | (sc->cmnd[2] << 8) | sc->cmnd[3])*512;
 simscsi_sg_readwrite(sc, mode, offset);
}
