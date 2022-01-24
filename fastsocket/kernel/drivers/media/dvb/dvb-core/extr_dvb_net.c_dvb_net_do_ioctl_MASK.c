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
struct net_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_net_priv {int /*<<< orphan*/  pid; int /*<<< orphan*/  feedtype; } ;
struct dvb_net_if {int if_num; int /*<<< orphan*/  feedtype; int /*<<< orphan*/  pid; } ;
struct dvb_net {struct net_device** device; int /*<<< orphan*/ * state; } ;
struct dvb_device {TYPE_1__* adapter; struct dvb_net* priv; } ;
struct __dvb_net_if_old {int if_num; int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 unsigned long DVB_NET_DEVICES_MAX ; 
 int /*<<< orphan*/  DVB_NET_FEEDTYPE_MPE ; 
 int EINVAL ; 
 int ENOTTY ; 
 int EPERM ; 
#define  NET_ADD_IF 132 
#define  NET_GET_IF 131 
#define  NET_REMOVE_IF 130 
 int O_ACCMODE ; 
 int O_RDONLY ; 
#define  __NET_ADD_IF_OLD 129 
#define  __NET_GET_IF_OLD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dvb_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dvb_net*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dvb_net_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file,
		  unsigned int cmd, void *parg)
{
	struct dvb_device *dvbdev = file->private_data;
	struct dvb_net *dvbnet = dvbdev->priv;

	if (((file->f_flags&O_ACCMODE)==O_RDONLY))
		return -EPERM;

	switch (cmd) {
	case NET_ADD_IF:
	{
		struct dvb_net_if *dvbnetif = parg;
		int result;

		if (!FUNC0(CAP_SYS_ADMIN))
			return -EPERM;

		if (!FUNC5(dvbdev->adapter->module))
			return -EPERM;

		result=FUNC1(dvbnet, dvbnetif->pid, dvbnetif->feedtype);
		if (result<0) {
			FUNC3(dvbdev->adapter->module);
			return result;
		}
		dvbnetif->if_num=result;
		break;
	}
	case NET_GET_IF:
	{
		struct net_device *netdev;
		struct dvb_net_priv *priv_data;
		struct dvb_net_if *dvbnetif = parg;

		if (dvbnetif->if_num >= DVB_NET_DEVICES_MAX ||
		    !dvbnet->state[dvbnetif->if_num])
			return -EINVAL;

		netdev = dvbnet->device[dvbnetif->if_num];

		priv_data = FUNC4(netdev);
		dvbnetif->pid=priv_data->pid;
		dvbnetif->feedtype=priv_data->feedtype;
		break;
	}
	case NET_REMOVE_IF:
	{
		int ret;

		if (!FUNC0(CAP_SYS_ADMIN))
			return -EPERM;
		if ((unsigned long) parg >= DVB_NET_DEVICES_MAX)
			return -EINVAL;
		ret = FUNC2(dvbnet, (unsigned long) parg);
		if (!ret)
			FUNC3(dvbdev->adapter->module);
		return ret;
	}

	/* binary compatibility cruft */
	case __NET_ADD_IF_OLD:
	{
		struct __dvb_net_if_old *dvbnetif = parg;
		int result;

		if (!FUNC0(CAP_SYS_ADMIN))
			return -EPERM;

		if (!FUNC5(dvbdev->adapter->module))
			return -EPERM;

		result=FUNC1(dvbnet, dvbnetif->pid, DVB_NET_FEEDTYPE_MPE);
		if (result<0) {
			FUNC3(dvbdev->adapter->module);
			return result;
		}
		dvbnetif->if_num=result;
		break;
	}
	case __NET_GET_IF_OLD:
	{
		struct net_device *netdev;
		struct dvb_net_priv *priv_data;
		struct __dvb_net_if_old *dvbnetif = parg;

		if (dvbnetif->if_num >= DVB_NET_DEVICES_MAX ||
		    !dvbnet->state[dvbnetif->if_num])
			return -EINVAL;

		netdev = dvbnet->device[dvbnetif->if_num];

		priv_data = FUNC4(netdev);
		dvbnetif->pid=priv_data->pid;
		break;
	}
	default:
		return -ENOTTY;
	}
	return 0;
}