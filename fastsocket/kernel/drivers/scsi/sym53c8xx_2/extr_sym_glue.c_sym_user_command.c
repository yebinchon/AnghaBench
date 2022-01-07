
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sym_usrcmd {int cmd; int target; int data; } ;
struct sym_hcb {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int DEBUG_ALLOC ;
 int DEBUG_NEGO ;
 int DEBUG_PHASE ;
 int DEBUG_POINTER ;
 int DEBUG_QUEUE ;
 int DEBUG_RESULT ;
 int DEBUG_SCATTER ;
 int DEBUG_SCRIPT ;
 int DEBUG_TAGS ;
 int DEBUG_TIMING ;
 int DEBUG_TINY ;
 int EINVAL ;
 int GET_INT_ARG (char*,int,int) ;
 int SKIP_SPACES (char*,int) ;
 int SYM_DISC_ENABLED ;
 int is_keyword (char*,int,char*) ;
 int memset (struct sym_usrcmd*,int ,int) ;
 int printk (char*,int,...) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sym_exec_user_command (struct sym_hcb*,struct sym_usrcmd*) ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;

__attribute__((used)) static int sym_user_command(struct Scsi_Host *shost, char *buffer, int length)
{
 struct sym_hcb *np = sym_get_hcb(shost);
 char *ptr = buffer;
 int len = length;
 struct sym_usrcmd cmd, *uc = &cmd;
 int arg_len;
 u_long target;

 memset(uc, 0, sizeof(*uc));

 if (len > 0 && ptr[len-1] == '\n')
  --len;

 if ((arg_len = is_keyword(ptr, len, "setsync")) != 0)
  uc->cmd = 131;
 else if ((arg_len = is_keyword(ptr, len, "settags")) != 0)
  uc->cmd = 130;
 else if ((arg_len = is_keyword(ptr, len, "setverbose")) != 0)
  uc->cmd = 129;
 else if ((arg_len = is_keyword(ptr, len, "setwide")) != 0)
  uc->cmd = 128;




 else if ((arg_len = is_keyword(ptr, len, "setflag")) != 0)
  uc->cmd = 132;
 else if ((arg_len = is_keyword(ptr, len, "resetdev")) != 0)
  uc->cmd = 134;
 else if ((arg_len = is_keyword(ptr, len, "cleardev")) != 0)
  uc->cmd = 135;
 else
  arg_len = 0;





 if (!arg_len)
  return -EINVAL;
 ptr += arg_len; len -= arg_len;

 switch(uc->cmd) {
 case 131:
 case 130:
 case 128:
 case 132:
 case 134:
 case 135:
  SKIP_SPACES(ptr, len);
  if ((arg_len = is_keyword(ptr, len, "all")) != 0) {
   ptr += arg_len; len -= arg_len;
   uc->target = ~0;
  } else {
   GET_INT_ARG(ptr, len, target);
   uc->target = (1<<target);



  }
  break;
 }

 switch(uc->cmd) {
 case 129:
 case 131:
 case 130:
 case 128:
  SKIP_SPACES(ptr, len);
  GET_INT_ARG(ptr, len, uc->data);



  break;
 case 132:
  while (len > 0) {
   SKIP_SPACES(ptr, len);
   if ((arg_len = is_keyword(ptr, len, "no_disc")))
    uc->data &= ~SYM_DISC_ENABLED;
   else
    return -EINVAL;
   ptr += arg_len; len -= arg_len;
  }
  break;
 default:
  break;
 }

 if (len)
  return -EINVAL;
 else {
  unsigned long flags;

  spin_lock_irqsave(shost->host_lock, flags);
  sym_exec_user_command(np, uc);
  spin_unlock_irqrestore(shost->host_lock, flags);
 }
 return length;
}
