
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* sun3_scsi_regp ;

__attribute__((used)) static inline unsigned char sun3scsi_read(int reg)
{
 return( sun3_scsi_regp[reg] );
}
