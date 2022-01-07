
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int scsi_debug_lbpu ;
 unsigned int scsi_debug_lbpws ;
 unsigned int scsi_debug_lbpws10 ;

__attribute__((used)) static unsigned int scsi_debug_lbp(void)
{
 return scsi_debug_lbpu | scsi_debug_lbpws | scsi_debug_lbpws10;
}
