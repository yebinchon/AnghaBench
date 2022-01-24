#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  substring_t ;
struct TYPE_7__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_8__ {void* service_id; int /*<<< orphan*/  pkey; TYPE_1__ dgid; } ;
struct srp_target_port {int io_class; int cmd_sg_cnt; int allow_ext_sg; int sg_tablesize; void* initiator_ext; TYPE_3__* scsi_host; void* service_id; TYPE_2__ path; int /*<<< orphan*/  orig_dgid; void* ioc_guid; void* id_ext; } ;
struct TYPE_10__ {int token; char* pattern; } ;
struct TYPE_9__ {int max_sectors; int /*<<< orphan*/  cmd_per_lun; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
 int SCSI_MAX_SG_CHAIN_SEGMENTS ; 
 int /*<<< orphan*/  SRP_CMD_SQ_SIZE ; 
 int SRP_OPT_ALL ; 
#define  SRP_OPT_ALLOW_EXT_SG 139 
#define  SRP_OPT_CMD_SG_ENTRIES 138 
#define  SRP_OPT_DGID 137 
#define  SRP_OPT_ID_EXT 136 
#define  SRP_OPT_INITIATOR_EXT 135 
#define  SRP_OPT_IOC_GUID 134 
#define  SRP_OPT_IO_CLASS 133 
#define  SRP_OPT_MAX_CMD_PER_LUN 132 
#define  SRP_OPT_MAX_SECT 131 
#define  SRP_OPT_PKEY 130 
#define  SRP_OPT_SERVICE_ID 129 
#define  SRP_OPT_SG_TABLESIZE 128 
 int SRP_REV10_IB_IO_CLASS ; 
 int SRP_REV16A_IB_IO_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* srp_opt_tokens ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int FUNC15 (char*) ; 
 char* FUNC16 (char**,char*) ; 

__attribute__((used)) static int FUNC17(const char *buf, struct srp_target_port *target)
{
	char *options, *sep_opt;
	char *p;
	char dgid[3];
	substring_t args[MAX_OPT_ARGS];
	int opt_mask = 0;
	int token;
	int ret = -EINVAL;
	int i;

	options = FUNC4(buf, GFP_KERNEL);
	if (!options)
		return -ENOMEM;

	sep_opt = options;
	while ((p = FUNC16(&sep_opt, ",")) != NULL) {
		if (!*p)
			continue;

		token = FUNC8(p, srp_opt_tokens, args);
		opt_mask |= token;

		switch (token) {
		case SRP_OPT_ID_EXT:
			p = FUNC7(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			target->id_ext = FUNC2(FUNC13(p, NULL, 16));
			FUNC3(p);
			break;

		case SRP_OPT_IOC_GUID:
			p = FUNC7(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			target->ioc_guid = FUNC2(FUNC13(p, NULL, 16));
			FUNC3(p);
			break;

		case SRP_OPT_DGID:
			p = FUNC7(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			if (FUNC15(p) != 32) {
				FUNC11("bad dest GID parameter '%s'\n", p);
				FUNC3(p);
				goto out;
			}

			for (i = 0; i < 16; ++i) {
				FUNC14(dgid, p + i * 2, 3);
				target->path.dgid.raw[i] = FUNC12(dgid, NULL, 16);
			}
			FUNC3(p);
			FUNC9(target->orig_dgid, target->path.dgid.raw, 16);
			break;

		case SRP_OPT_PKEY:
			if (FUNC5(args, &token)) {
				FUNC11("bad P_Key parameter '%s'\n", p);
				goto out;
			}
			target->path.pkey = FUNC1(token);
			break;

		case SRP_OPT_SERVICE_ID:
			p = FUNC7(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			target->service_id = FUNC2(FUNC13(p, NULL, 16));
			target->path.service_id = target->service_id;
			FUNC3(p);
			break;

		case SRP_OPT_MAX_SECT:
			if (FUNC6(args, &token)) {
				FUNC11("bad max sect parameter '%s'\n", p);
				goto out;
			}
			target->scsi_host->max_sectors = token;
			break;

		case SRP_OPT_MAX_CMD_PER_LUN:
			if (FUNC6(args, &token)) {
				FUNC11("bad max cmd_per_lun parameter '%s'\n",
					p);
				goto out;
			}
			target->scsi_host->cmd_per_lun = FUNC10(token, SRP_CMD_SQ_SIZE);
			break;

		case SRP_OPT_IO_CLASS:
			if (FUNC5(args, &token)) {
				FUNC11("bad IO class parameter '%s'\n", p);
				goto out;
			}
			if (token != SRP_REV10_IB_IO_CLASS &&
			    token != SRP_REV16A_IB_IO_CLASS) {
				FUNC11("unknown IO class parameter value %x specified (use %x or %x).\n",
					token, SRP_REV10_IB_IO_CLASS,
					SRP_REV16A_IB_IO_CLASS);
				goto out;
			}
			target->io_class = token;
			break;

		case SRP_OPT_INITIATOR_EXT:
			p = FUNC7(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			target->initiator_ext = FUNC2(FUNC13(p, NULL, 16));
			FUNC3(p);
			break;

		case SRP_OPT_CMD_SG_ENTRIES:
			if (FUNC6(args, &token) || token < 1 || token > 255) {
				FUNC11("bad max cmd_sg_entries parameter '%s'\n",
					p);
				goto out;
			}
			target->cmd_sg_cnt = token;
			break;

		case SRP_OPT_ALLOW_EXT_SG:
			if (FUNC6(args, &token)) {
				FUNC11("bad allow_ext_sg parameter '%s'\n", p);
				goto out;
			}
			target->allow_ext_sg = !!token;
			break;

		case SRP_OPT_SG_TABLESIZE:
			if (FUNC6(args, &token) || token < 1 ||
					token > SCSI_MAX_SG_CHAIN_SEGMENTS) {
				FUNC11("bad max sg_tablesize parameter '%s'\n",
					p);
				goto out;
			}
			target->sg_tablesize = token;
			break;

		default:
			FUNC11("unknown parameter or missing value '%s' in target creation request\n",
				p);
			goto out;
		}
	}

	if ((opt_mask & SRP_OPT_ALL) == SRP_OPT_ALL)
		ret = 0;
	else
		for (i = 0; i < FUNC0(srp_opt_tokens); ++i)
			if ((srp_opt_tokens[i].token & SRP_OPT_ALL) &&
			    !(srp_opt_tokens[i].token & opt_mask))
				FUNC11("target creation request is missing parameter '%s'\n",
					srp_opt_tokens[i].pattern);

out:
	FUNC3(options);
	return ret;
}