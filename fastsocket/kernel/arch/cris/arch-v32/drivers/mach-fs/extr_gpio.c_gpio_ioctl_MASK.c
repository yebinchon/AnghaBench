#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct inode {int dummy; } ;
struct gpio_private {scalar_t__ minor; unsigned long highalarm; unsigned long lowalarm; unsigned long clk_mask; unsigned long data_mask; unsigned long write_msb; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ ETRAXGPIO_IOCTYPE ; 
 size_t GPIO_MINOR_A ; 
 size_t GPIO_MINOR_LEDS ; 
 scalar_t__ GPIO_MINOR_V ; 
#define  IO_CFG_WRITE_MODE 141 
#define  IO_CLRALARM 140 
#define  IO_CLRBITS 139 
#define  IO_HIGHALARM 138 
#define  IO_LOWALARM 137 
#define  IO_READBITS 136 
#define  IO_READDIR 135 
#define  IO_READ_INBITS 134 
#define  IO_READ_OUTBITS 133 
#define  IO_SETBITS 132 
#define  IO_SETGET_INPUT 131 
#define  IO_SETGET_OUTPUT 130 
#define  IO_SETINPUT 129 
#define  IO_SETOUTPUT 128 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  alarm_lock ; 
 unsigned long* changeable_bits ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,unsigned long*,int) ; 
 int** data_in ; 
 unsigned long** data_out ; 
 int** dir_oe ; 
 int FUNC4 (unsigned int,unsigned long) ; 
 unsigned long gpio_pa_high_alarms ; 
 unsigned long gpio_pa_low_alarms ; 
 int gpio_some_alarms ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int FUNC7 (struct gpio_private*,unsigned long) ; 
 int FUNC8 (struct gpio_private*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (struct file*,unsigned int,unsigned long) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, struct file *file,
	   unsigned int cmd, unsigned long arg)
{
	unsigned long flags;
	unsigned long val;
	unsigned long shadow;
	struct gpio_private *priv = (struct gpio_private *)file->private_data;
	if (FUNC1(cmd) != ETRAXGPIO_IOCTYPE)
		return -EINVAL;

#ifdef CONFIG_ETRAX_VIRTUAL_GPIO
	if (priv->minor == GPIO_MINOR_V)
		return virtual_gpio_ioctl(file, cmd, arg);
#endif

	switch (FUNC0(cmd)) {
	case IO_READBITS: /* Use IO_READ_INBITS and IO_READ_OUTBITS instead */
		/* Read the port. */
		return *data_in[priv->minor];
		break;
	case IO_SETBITS:
		FUNC6(flags);
		/* Set changeable bits with a 1 in arg. */
		shadow = *data_out[priv->minor];
		shadow |=  (arg & changeable_bits[priv->minor]);
		*data_out[priv->minor] = shadow;
		FUNC5(flags);
		break;
	case IO_CLRBITS:
		FUNC6(flags);
		/* Clear changeable bits with a 1 in arg. */
		shadow = *data_out[priv->minor];
		shadow &=  ~(arg & changeable_bits[priv->minor]);
		*data_out[priv->minor] = shadow;
		FUNC5(flags);
		break;
	case IO_HIGHALARM:
		/* Set alarm when bits with 1 in arg go high. */
		priv->highalarm |= arg;
		FUNC9(&alarm_lock, flags);
		gpio_some_alarms = 1;
		if (priv->minor == GPIO_MINOR_A)
			gpio_pa_high_alarms |= arg;
		FUNC10(&alarm_lock, flags);
		break;
	case IO_LOWALARM:
		/* Set alarm when bits with 1 in arg go low. */
		priv->lowalarm |= arg;
		FUNC9(&alarm_lock, flags);
		gpio_some_alarms = 1;
		if (priv->minor == GPIO_MINOR_A)
			gpio_pa_low_alarms |= arg;
		FUNC10(&alarm_lock, flags);
		break;
	case IO_CLRALARM:
		/* Clear alarm for bits with 1 in arg. */
		priv->highalarm &= ~arg;
		priv->lowalarm  &= ~arg;
		FUNC9(&alarm_lock, flags);
		if (priv->minor == GPIO_MINOR_A) {
			if (gpio_pa_high_alarms & arg ||
			    gpio_pa_low_alarms & arg)
				/* Must update the gpio_pa_*alarms masks */
				;
		}
		FUNC10(&alarm_lock, flags);
		break;
	case IO_READDIR: /* Use IO_SETGET_INPUT/OUTPUT instead! */
		/* Read direction 0=input 1=output */
		return *dir_oe[priv->minor];
	case IO_SETINPUT: /* Use IO_SETGET_INPUT instead! */
		/* Set direction 0=unchanged 1=input,
		 * return mask with 1=input
		 */
		return FUNC7(priv, arg);
		break;
	case IO_SETOUTPUT: /* Use IO_SETGET_OUTPUT instead! */
		/* Set direction 0=unchanged 1=output,
		 * return mask with 1=output
		 */
		return FUNC8(priv, arg);

	case IO_CFG_WRITE_MODE:
	{
		unsigned long dir_shadow;
		dir_shadow = *dir_oe[priv->minor];

		priv->clk_mask = arg & 0xFF;
		priv->data_mask = (arg >> 8) & 0xFF;
		priv->write_msb = (arg >> 16) & 0x01;
		/* Check if we're allowed to change the bits and
		 * the direction is correct
		 */
		if (!((priv->clk_mask & changeable_bits[priv->minor]) &&
		      (priv->data_mask & changeable_bits[priv->minor]) &&
		      (priv->clk_mask & dir_shadow) &&
		      (priv->data_mask & dir_shadow))) {
			priv->clk_mask = 0;
			priv->data_mask = 0;
			return -EPERM;
		}
		break;
	}
	case IO_READ_INBITS:
		/* *arg is result of reading the input pins */
		val = *data_in[priv->minor];
		if (FUNC3((unsigned long *)arg, &val, sizeof(val)))
			return -EFAULT;
		return 0;
		break;
	case IO_READ_OUTBITS:
		 /* *arg is result of reading the output shadow */
		val = *data_out[priv->minor];
		if (FUNC3((unsigned long *)arg, &val, sizeof(val)))
			return -EFAULT;
		break;
	case IO_SETGET_INPUT:
		/* bits set in *arg is set to input,
		 * *arg updated with current input pins.
		 */
		if (FUNC2(&val, (unsigned long *)arg, sizeof(val)))
			return -EFAULT;
		val = FUNC7(priv, val);
		if (FUNC3((unsigned long *)arg, &val, sizeof(val)))
			return -EFAULT;
		break;
	case IO_SETGET_OUTPUT:
		/* bits set in *arg is set to output,
		 * *arg updated with current output pins.
		 */
		if (FUNC2(&val, (unsigned long *)arg, sizeof(val)))
			return -EFAULT;
		val = FUNC8(priv, val);
		if (FUNC3((unsigned long *)arg, &val, sizeof(val)))
			return -EFAULT;
		break;
	default:
		if (priv->minor == GPIO_MINOR_LEDS)
			return FUNC4(cmd, arg);
		else
			return -EINVAL;
	} /* switch */

	return 0;
}