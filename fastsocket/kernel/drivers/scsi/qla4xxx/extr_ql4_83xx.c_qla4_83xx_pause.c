
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla4_83xx_reset_entry_hdr {scalar_t__ delay; } ;


 int mdelay (int ) ;

__attribute__((used)) static void qla4_83xx_pause(struct scsi_qla_host *ha,
       struct qla4_83xx_reset_entry_hdr *p_hdr)
{
 if (p_hdr->delay)
  mdelay((uint32_t)((long)p_hdr->delay));
}
