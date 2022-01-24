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
typedef  int u8 ;
struct usb_device {int dummy; } ;
struct req_t {int cmd; int i2c_addr; int addr; int mbox; int addr_len; int data_len; int* data; } ;

/* Variables and functions */
 size_t ACK_HDR_LEN ; 
 int /*<<< orphan*/  AF9015_USB_TIMEOUT ; 
#define  BOOT 138 
 int BUF_LEN ; 
#define  COPY_FIRMWARE 137 
#define  DOWNLOAD_FIRMWARE 136 
 int EAGAIN ; 
 int EINVAL ; 
#define  GET_CONFIG 135 
#define  GET_IR_CODE 134 
#define  READ_I2C 133 
#define  READ_MEMORY 132 
 int READ_WRITE_I2C ; 
#define  RECONNECT_USB 131 
 size_t REQ_HDR_LEN ; 
#define  WRITE_I2C 130 
#define  WRITE_MEMORY 129 
#define  WRITE_VIRTUAL_MEMORY 128 
 int /*<<< orphan*/  af9015_usb_mutex ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_device*,int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC10(struct usb_device *udev, struct req_t *req)
{
#define BUF_LEN 63
#define REQ_HDR_LEN 8 /* send header size */
#define ACK_HDR_LEN 2 /* rece header size */
	int act_len, ret;
	u8 buf[BUF_LEN];
	u8 write = 1;
	u8 msg_len = REQ_HDR_LEN;
	static u8 seq; /* packet sequence number */

	if (FUNC5(&af9015_usb_mutex) < 0)
		return -EAGAIN;

	buf[0] = req->cmd;
	buf[1] = seq++;
	buf[2] = req->i2c_addr;
	buf[3] = req->addr >> 8;
	buf[4] = req->addr & 0xff;
	buf[5] = req->mbox;
	buf[6] = req->addr_len;
	buf[7] = req->data_len;

	switch (req->cmd) {
	case GET_CONFIG:
	case READ_MEMORY:
	case RECONNECT_USB:
	case GET_IR_CODE:
		write = 0;
		break;
	case READ_I2C:
		write = 0;
		buf[2] |= 0x01; /* set I2C direction */
	case WRITE_I2C:
		buf[0] = READ_WRITE_I2C;
		break;
	case WRITE_MEMORY:
		if (((req->addr & 0xff00) == 0xff00) ||
		    ((req->addr & 0xff00) == 0xae00))
			buf[0] = WRITE_VIRTUAL_MEMORY;
	case WRITE_VIRTUAL_MEMORY:
	case COPY_FIRMWARE:
	case DOWNLOAD_FIRMWARE:
	case BOOT:
		break;
	default:
		FUNC2("unknown command:%d", req->cmd);
		ret = -1;
		goto error_unlock;
	}

	/* buffer overflow check */
	if ((write && (req->data_len > BUF_LEN - REQ_HDR_LEN)) ||
		(!write && (req->data_len > BUF_LEN - ACK_HDR_LEN))) {
		FUNC2("too much data; cmd:%d len:%d", req->cmd, req->data_len);
		ret = -EINVAL;
		goto error_unlock;
	}

	/* write requested */
	if (write) {
		FUNC3(&buf[REQ_HDR_LEN], req->data, req->data_len);
		msg_len += req->data_len;
	}

	FUNC0(">>> ");
	FUNC1(buf, msg_len, deb_xfer);

	/* send req */
	ret = FUNC7(udev, FUNC9(udev, 0x02), buf, msg_len,
		&act_len, AF9015_USB_TIMEOUT);
	if (ret)
		FUNC2("bulk message failed:%d (%d/%d)", ret, msg_len, act_len);
	else
		if (act_len != msg_len)
			ret = -1; /* all data is not send */
	if (ret)
		goto error_unlock;

	/* no ack for those packets */
	if (req->cmd == DOWNLOAD_FIRMWARE || req->cmd == RECONNECT_USB)
		goto exit_unlock;

	/* write receives seq + status = 2 bytes
	   read receives seq + status + data = 2 + N bytes */
	msg_len = ACK_HDR_LEN;
	if (!write)
		msg_len += req->data_len;

	ret = FUNC7(udev, FUNC8(udev, 0x81), buf, msg_len,
		&act_len, AF9015_USB_TIMEOUT);
	if (ret) {
		FUNC2("recv bulk message failed:%d", ret);
		ret = -1;
		goto error_unlock;
	}

	FUNC0("<<< ");
	FUNC1(buf, act_len, deb_xfer);

	/* remote controller query status is 1 if remote code is not received */
	if (req->cmd == GET_IR_CODE && buf[1] == 1) {
		buf[1] = 0; /* clear command "error" status */
		FUNC4(&buf[2], 0, req->data_len);
		buf[3] = 1; /* no remote code received mark */
	}

	/* check status */
	if (buf[1]) {
		FUNC2("command failed:%d", buf[1]);
		ret = -1;
		goto error_unlock;
	}

	/* read request, copy returned data to return buf */
	if (!write)
		FUNC3(req->data, &buf[ACK_HDR_LEN], req->data_len);

error_unlock:
exit_unlock:
	FUNC6(&af9015_usb_mutex);

	return ret;
}