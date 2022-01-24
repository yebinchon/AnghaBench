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
typedef  char u8 ;
typedef  int u32 ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct ndis_config_param {void* value_length; void* value_offs; void* type; void* name_length; void* name_offs; } ;
typedef  void* __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OID_GEN_RNDIS_CONFIG_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ndis_config_param*) ; 
 struct ndis_config_param* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ndis_config_param*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ,struct ndis_config_param*,int) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct usbnet *dev, char *param,
						int value_type, void *value)
{
	struct ndis_config_param *infobuf;
	int value_len, info_len, param_len, ret, i;
	__le16 *unibuf;
	__le32 *dst_value;

	if (value_type == 0)
		value_len = sizeof(__le32);
	else if (value_type == 2)
		value_len = FUNC8(value) * sizeof(__le16);
	else
		return -EINVAL;

	param_len = FUNC8(param) * sizeof(__le16);
	info_len = sizeof(*infobuf) + param_len + value_len;

#ifdef DEBUG
	info_len += 12;
#endif
	infobuf = FUNC4(info_len, GFP_KERNEL);
	if (!infobuf)
		return -ENOMEM;

#ifdef DEBUG
	info_len -= 12;
	/* extra 12 bytes are for padding (debug output) */
	memset(infobuf, 0xCC, info_len + 12);
#endif

	if (value_type == 2)
		FUNC6(dev->net, "setting config parameter: %s, value: %s\n",
			   param, (u8 *)value);
	else
		FUNC6(dev->net, "setting config parameter: %s, value: %d\n",
			   param, *(u32 *)value);

	infobuf->name_offs = FUNC2(sizeof(*infobuf));
	infobuf->name_length = FUNC2(param_len);
	infobuf->type = FUNC2(value_type);
	infobuf->value_offs = FUNC2(sizeof(*infobuf) + param_len);
	infobuf->value_length = FUNC2(value_len);

	/* simple string to unicode string conversion */
	unibuf = (void *)infobuf + sizeof(*infobuf);
	for (i = 0; i < param_len / sizeof(__le16); i++)
		unibuf[i] = FUNC1(param[i]);

	if (value_type == 2) {
		unibuf = (void *)infobuf + sizeof(*infobuf) + param_len;
		for (i = 0; i < value_len / sizeof(__le16); i++)
			unibuf[i] = FUNC1(((u8 *)value)[i]);
	} else {
		dst_value = (void *)infobuf + sizeof(*infobuf) + param_len;
		*dst_value = FUNC2(*(u32 *)value);
	}

#ifdef DEBUG
	netdev_dbg(dev->net, "info buffer (len: %d)\n", info_len);
	for (i = 0; i < info_len; i += 12) {
		u32 *tmp = (u32 *)((u8 *)infobuf + i);
		netdev_dbg(dev->net, "%08X:%08X:%08X\n",
			   cpu_to_be32(tmp[0]),
			   cpu_to_be32(tmp[1]),
			   cpu_to_be32(tmp[2]));
	}
#endif

	ret = FUNC7(dev, OID_GEN_RNDIS_CONFIG_PARAMETER,
							infobuf, info_len);
	if (ret != 0)
		FUNC6(dev->net, "setting rndis config parameter failed, %d\n",
			   ret);

	FUNC3(infobuf);
	return ret;
}