
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unchar ;



__attribute__((used)) static inline int scsi2int(unchar * scsi)
{
 return (scsi[0] << 16) | (scsi[1] << 8) | scsi[2];
}
