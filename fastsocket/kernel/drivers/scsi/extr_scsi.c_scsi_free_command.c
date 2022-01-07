
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_cmd_pool {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 struct scsi_host_cmd_pool* scsi_get_host_cmd_pool (int ) ;
 int scsi_pool_free_command (struct scsi_host_cmd_pool*,struct scsi_cmnd*) ;
 int scsi_put_host_cmd_pool (int ) ;

void scsi_free_command(gfp_t gfp_mask, struct scsi_cmnd *cmd)
{
 struct scsi_host_cmd_pool *pool = scsi_get_host_cmd_pool(gfp_mask);







 BUG_ON(!pool);

 scsi_pool_free_command(pool, cmd);





 scsi_put_host_cmd_pool(gfp_mask);
 scsi_put_host_cmd_pool(gfp_mask);
}
