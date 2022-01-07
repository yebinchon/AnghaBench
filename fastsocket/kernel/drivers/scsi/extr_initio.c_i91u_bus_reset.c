
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct initio_host {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; scalar_t__ hostdata; } ;


 int SUCCESS ;
 int initio_reset_scsi (struct initio_host*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int i91u_bus_reset(struct scsi_cmnd * cmnd)
{
 struct initio_host *host;

 host = (struct initio_host *) cmnd->device->host->hostdata;

 spin_lock_irq(cmnd->device->host->host_lock);
 initio_reset_scsi(host, 0);
 spin_unlock_irq(cmnd->device->host->host_lock);

 return SUCCESS;
}
