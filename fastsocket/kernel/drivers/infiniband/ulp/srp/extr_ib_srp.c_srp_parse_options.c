
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int substring_t ;
struct TYPE_7__ {int * raw; } ;
struct TYPE_8__ {void* service_id; int pkey; TYPE_1__ dgid; } ;
struct srp_target_port {int io_class; int cmd_sg_cnt; int allow_ext_sg; int sg_tablesize; void* initiator_ext; TYPE_3__* scsi_host; void* service_id; TYPE_2__ path; int orig_dgid; void* ioc_guid; void* id_ext; } ;
struct TYPE_10__ {int token; char* pattern; } ;
struct TYPE_9__ {int max_sectors; int cmd_per_lun; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int SCSI_MAX_SG_CHAIN_SEGMENTS ;
 int SRP_CMD_SQ_SIZE ;
 int SRP_OPT_ALL ;
 int SRP_REV10_IB_IO_CLASS ;
 int SRP_REV16A_IB_IO_CLASS ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be64 (int ) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_hex (int *,int*) ;
 int match_int (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,TYPE_4__*,int *) ;
 int memcpy (int ,int *,int) ;
 int min (int,int ) ;
 int pr_warn (char*,...) ;
 int simple_strtoul (char*,int *,int) ;
 int simple_strtoull (char*,int *,int) ;
 TYPE_4__* srp_opt_tokens ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int srp_parse_options(const char *buf, struct srp_target_port *target)
{
 char *options, *sep_opt;
 char *p;
 char dgid[3];
 substring_t args[MAX_OPT_ARGS];
 int opt_mask = 0;
 int token;
 int ret = -EINVAL;
 int i;

 options = kstrdup(buf, GFP_KERNEL);
 if (!options)
  return -ENOMEM;

 sep_opt = options;
 while ((p = strsep(&sep_opt, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, srp_opt_tokens, args);
  opt_mask |= token;

  switch (token) {
  case 136:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   target->id_ext = cpu_to_be64(simple_strtoull(p, ((void*)0), 16));
   kfree(p);
   break;

  case 134:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   target->ioc_guid = cpu_to_be64(simple_strtoull(p, ((void*)0), 16));
   kfree(p);
   break;

  case 137:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   if (strlen(p) != 32) {
    pr_warn("bad dest GID parameter '%s'\n", p);
    kfree(p);
    goto out;
   }

   for (i = 0; i < 16; ++i) {
    strlcpy(dgid, p + i * 2, 3);
    target->path.dgid.raw[i] = simple_strtoul(dgid, ((void*)0), 16);
   }
   kfree(p);
   memcpy(target->orig_dgid, target->path.dgid.raw, 16);
   break;

  case 130:
   if (match_hex(args, &token)) {
    pr_warn("bad P_Key parameter '%s'\n", p);
    goto out;
   }
   target->path.pkey = cpu_to_be16(token);
   break;

  case 129:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   target->service_id = cpu_to_be64(simple_strtoull(p, ((void*)0), 16));
   target->path.service_id = target->service_id;
   kfree(p);
   break;

  case 131:
   if (match_int(args, &token)) {
    pr_warn("bad max sect parameter '%s'\n", p);
    goto out;
   }
   target->scsi_host->max_sectors = token;
   break;

  case 132:
   if (match_int(args, &token)) {
    pr_warn("bad max cmd_per_lun parameter '%s'\n",
     p);
    goto out;
   }
   target->scsi_host->cmd_per_lun = min(token, SRP_CMD_SQ_SIZE);
   break;

  case 133:
   if (match_hex(args, &token)) {
    pr_warn("bad IO class parameter '%s'\n", p);
    goto out;
   }
   if (token != SRP_REV10_IB_IO_CLASS &&
       token != SRP_REV16A_IB_IO_CLASS) {
    pr_warn("unknown IO class parameter value %x specified (use %x or %x).\n",
     token, SRP_REV10_IB_IO_CLASS,
     SRP_REV16A_IB_IO_CLASS);
    goto out;
   }
   target->io_class = token;
   break;

  case 135:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   target->initiator_ext = cpu_to_be64(simple_strtoull(p, ((void*)0), 16));
   kfree(p);
   break;

  case 138:
   if (match_int(args, &token) || token < 1 || token > 255) {
    pr_warn("bad max cmd_sg_entries parameter '%s'\n",
     p);
    goto out;
   }
   target->cmd_sg_cnt = token;
   break;

  case 139:
   if (match_int(args, &token)) {
    pr_warn("bad allow_ext_sg parameter '%s'\n", p);
    goto out;
   }
   target->allow_ext_sg = !!token;
   break;

  case 128:
   if (match_int(args, &token) || token < 1 ||
     token > SCSI_MAX_SG_CHAIN_SEGMENTS) {
    pr_warn("bad max sg_tablesize parameter '%s'\n",
     p);
    goto out;
   }
   target->sg_tablesize = token;
   break;

  default:
   pr_warn("unknown parameter or missing value '%s' in target creation request\n",
    p);
   goto out;
  }
 }

 if ((opt_mask & SRP_OPT_ALL) == SRP_OPT_ALL)
  ret = 0;
 else
  for (i = 0; i < ARRAY_SIZE(srp_opt_tokens); ++i)
   if ((srp_opt_tokens[i].token & SRP_OPT_ALL) &&
       !(srp_opt_tokens[i].token & opt_mask))
    pr_warn("target creation request is missing parameter '%s'\n",
     srp_opt_tokens[i].pattern);

out:
 kfree(options);
 return ret;
}
