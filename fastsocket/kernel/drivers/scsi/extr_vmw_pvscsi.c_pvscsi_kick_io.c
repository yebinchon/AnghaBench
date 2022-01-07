
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dummy; } ;


 int pvscsi_kick_rw_io (struct pvscsi_adapter const*) ;
 int pvscsi_process_request_ring (struct pvscsi_adapter const*) ;
 scalar_t__ scsi_is_rw (unsigned char) ;

__attribute__((used)) static void pvscsi_kick_io(const struct pvscsi_adapter *adapter,
      unsigned char op)
{
 if (scsi_is_rw(op))
  pvscsi_kick_rw_io(adapter);
 else
  pvscsi_process_request_ring(adapter);
}
