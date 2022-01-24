#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_12__ {TYPE_3__* algo_data; int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; TYPE_1__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct TYPE_10__ {int udelay; struct radeon_i2c_chan* data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  setsda; int /*<<< orphan*/  post_xfer; int /*<<< orphan*/  pre_xfer; } ;
struct TYPE_11__ {TYPE_3__ bit; } ;
struct radeon_i2c_bus_rec {scalar_t__ hw_capable; scalar_t__ mm_i2c; } ;
struct radeon_i2c_chan {TYPE_5__ adapter; TYPE_4__ algo; struct drm_device* dev; struct radeon_i2c_bus_rec rec; } ;
struct radeon_device {scalar_t__ family; } ;
struct drm_device {TYPE_2__* pdev; struct radeon_device* dev_private; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CHIP_R580 ; 
 scalar_t__ CHIP_RS480 ; 
 scalar_t__ CHIP_RV515 ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  get_clock ; 
 int /*<<< orphan*/  get_data ; 
 int FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct radeon_i2c_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_i2c_chan*) ; 
 struct radeon_i2c_chan* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  post_xfer ; 
 int /*<<< orphan*/  pre_xfer ; 
 int /*<<< orphan*/  radeon_atom_i2c_algo ; 
 scalar_t__ radeon_hw_i2c ; 
 int /*<<< orphan*/  radeon_i2c_algo ; 
 int /*<<< orphan*/  set_clock ; 
 int /*<<< orphan*/  set_data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

struct radeon_i2c_chan *FUNC9(struct drm_device *dev,
					  struct radeon_i2c_bus_rec *rec,
					  const char *name)
{
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_i2c_chan *i2c;
	int ret;

	/* don't add the mm_i2c bus unless hw_i2c is enabled */
	if (rec->mm_i2c && (radeon_hw_i2c == 0))
		return NULL;

	i2c = FUNC6(sizeof(struct radeon_i2c_chan), GFP_KERNEL);
	if (i2c == NULL)
		return NULL;

	i2c->rec = *rec;
	i2c->adapter.owner = THIS_MODULE;
	i2c->adapter.class = I2C_CLASS_DDC;
	i2c->adapter.dev.parent = &dev->pdev->dev;
	i2c->dev = dev;
	FUNC4(&i2c->adapter, i2c);
	if (rec->mm_i2c ||
	    (rec->hw_capable &&
	     radeon_hw_i2c &&
	     ((rdev->family <= CHIP_RS480) ||
	      ((rdev->family >= CHIP_RV515) && (rdev->family <= CHIP_R580))))) {
		/* set the radeon hw i2c adapter */
		FUNC7(i2c->adapter.name, sizeof(i2c->adapter.name),
			 "Radeon i2c hw bus %s", name);
		i2c->adapter.algo = &radeon_i2c_algo;
		ret = FUNC2(&i2c->adapter);
		if (ret) {
			FUNC1("Failed to register hw i2c %s\n", name);
			goto out_free;
		}
	} else if (rec->hw_capable &&
		   radeon_hw_i2c &&
		   FUNC0(rdev)) {
		/* hw i2c using atom */
		FUNC7(i2c->adapter.name, sizeof(i2c->adapter.name),
			 "Radeon i2c hw bus %s", name);
		i2c->adapter.algo = &radeon_atom_i2c_algo;
		ret = FUNC2(&i2c->adapter);
		if (ret) {
			FUNC1("Failed to register hw i2c %s\n", name);
			goto out_free;
		}
	} else {
		/* set the radeon bit adapter */
		FUNC7(i2c->adapter.name, sizeof(i2c->adapter.name),
			 "Radeon i2c bit bus %s", name);
		i2c->adapter.algo_data = &i2c->algo.bit;
		i2c->algo.bit.pre_xfer = pre_xfer;
		i2c->algo.bit.post_xfer = post_xfer;
		i2c->algo.bit.setsda = set_data;
		i2c->algo.bit.setscl = set_clock;
		i2c->algo.bit.getsda = get_data;
		i2c->algo.bit.getscl = get_clock;
		i2c->algo.bit.udelay = 10;
		i2c->algo.bit.timeout = FUNC8(2200);	/* from VESA */
		i2c->algo.bit.data = i2c;
		ret = FUNC3(&i2c->adapter);
		if (ret) {
			FUNC1("Failed to register bit i2c %s\n", name);
			goto out_free;
		}
	}

	return i2c;
out_free:
	FUNC5(i2c);
	return NULL;

}