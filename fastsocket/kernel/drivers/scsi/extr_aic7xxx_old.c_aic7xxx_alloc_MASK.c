#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_host_template {int dummy; } ;
struct aic7xxx_host {int /*<<< orphan*/  host_no; int /*<<< orphan*/  base; TYPE_1__* scb_data; struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  scb_data_type ;
struct TYPE_2__ {int /*<<< orphan*/  free_scbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAXREG ; 
 scalar_t__ MINREG ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aic7xxx_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC4 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static struct aic7xxx_host *
FUNC6(struct scsi_host_template *sht, struct aic7xxx_host *temp)
{
  struct aic7xxx_host *p = NULL;
  struct Scsi_Host *host;

  /*
   * Allocate a storage area by registering us with the mid-level
   * SCSI layer.
   */
  host = FUNC4(sht, sizeof(struct aic7xxx_host));

  if (host != NULL)
  {
    p = (struct aic7xxx_host *) host->hostdata;
    FUNC1(p, 0, sizeof(struct aic7xxx_host));
    *p = *temp;
    p->host = host;

    p->scb_data = FUNC0(sizeof(scb_data_type), GFP_ATOMIC);
    if (p->scb_data)
    {
      FUNC3 (&p->scb_data->free_scbs);
    }
    else
    {
      /*
       * For some reason we don't have enough memory.  Free the
       * allocated memory for the aic7xxx_host struct, and return NULL.
       */
      FUNC2(p->base, MAXREG - MINREG);
      FUNC5(host);
      return(NULL);
    }
    p->host_no = host->host_no;
  }
  return (p);
}