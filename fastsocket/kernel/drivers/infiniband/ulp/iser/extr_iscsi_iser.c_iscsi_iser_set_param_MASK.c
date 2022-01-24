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
struct iscsi_cls_conn {int dummy; } ;
typedef  enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;

/* Variables and functions */
 int EPROTO ; 
#define  ISCSI_PARAM_DATADGST_EN 132 
#define  ISCSI_PARAM_HDRDGST_EN 131 
#define  ISCSI_PARAM_IFMARKER_EN 130 
#define  ISCSI_PARAM_MAX_RECV_DLENGTH 129 
#define  ISCSI_PARAM_OFMARKER_EN 128 
 int FUNC0 (struct iscsi_cls_conn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*) ; 

__attribute__((used)) static int
FUNC3(struct iscsi_cls_conn *cls_conn,
		     enum iscsi_param param, char *buf, int buflen)
{
	int value;

	switch (param) {
	case ISCSI_PARAM_MAX_RECV_DLENGTH:
		/* TBD */
		break;
	case ISCSI_PARAM_HDRDGST_EN:
		FUNC2(buf, "%d", &value);
		if (value) {
			FUNC1("DataDigest wasn't negotiated to None");
			return -EPROTO;
		}
		break;
	case ISCSI_PARAM_DATADGST_EN:
		FUNC2(buf, "%d", &value);
		if (value) {
			FUNC1("DataDigest wasn't negotiated to None");
			return -EPROTO;
		}
		break;
	case ISCSI_PARAM_IFMARKER_EN:
		FUNC2(buf, "%d", &value);
		if (value) {
			FUNC1("IFMarker wasn't negotiated to No");
			return -EPROTO;
		}
		break;
	case ISCSI_PARAM_OFMARKER_EN:
		FUNC2(buf, "%d", &value);
		if (value) {
			FUNC1("OFMarker wasn't negotiated to No");
			return -EPROTO;
		}
		break;
	default:
		return FUNC0(cls_conn, param, buf, buflen);
	}

	return 0;
}