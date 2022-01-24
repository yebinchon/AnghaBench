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
struct spi_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  size_t ssize_t ;
typedef  enum spi_signal_type { ____Placeholder_spi_signal_type } spi_signal_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_signalling ) (struct Scsi_Host*,int) ;} ;

/* Variables and functions */
 size_t EINVAL ; 
 int SPI_SIGNAL_UNKNOWN ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,int) ; 
 struct spi_internal* FUNC2 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC3(dev);
	struct spi_internal *i = FUNC2(shost->transportt);
	enum spi_signal_type type = FUNC0(buf);

	if (!i->f->set_signalling)
		return -EINVAL;

	if (type != SPI_SIGNAL_UNKNOWN)
		i->f->set_signalling(shost, type);

	return count;
}