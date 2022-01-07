
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_cmd_pool {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
typedef int gfp_t ;


 struct scsi_host_cmd_pool* scsi_get_host_cmd_pool (int ) ;
 struct scsi_cmnd* scsi_pool_alloc_command (struct scsi_host_cmd_pool*,int ) ;

struct scsi_cmnd *scsi_allocate_command(gfp_t gfp_mask)
{
 struct scsi_host_cmd_pool *pool = scsi_get_host_cmd_pool(gfp_mask);

 if (!pool)
  return ((void*)0);

 return scsi_pool_alloc_command(pool, gfp_mask);
}
