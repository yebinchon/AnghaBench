
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t pgbuf; int buffer; } ;
typedef TYPE_1__ vtx_pagereq_t ;
typedef int vtx_pageinfo_t ;
struct TYPE_6__ {size_t numpages; int version_minor; int version_major; } ;
typedef TYPE_2__ vtx_info_t ;
struct saa5246a_device {int * pgbuf; } ;
struct file {int dummy; } ;


 long EFAULT ;
 long EINVAL ;
 int MAJOR_VERSION ;
 int MINOR_VERSION ;
 size_t NUM_DAUS ;
 int copy_to_user (int ,int *,int) ;
 int memset (int ,char,int) ;
 long saa5246a_clear_found_bit (struct saa5246a_device*,size_t) ;
 long saa5246a_get_page (struct saa5246a_device*,TYPE_1__*) ;
 int saa5246a_get_status (struct saa5246a_device*,int *,size_t) ;
 long saa5246a_request_page (struct saa5246a_device*,TYPE_1__*) ;
 long saa5246a_stop_dau (struct saa5246a_device*,size_t) ;
 struct saa5246a_device* video_drvdata (struct file*) ;

__attribute__((used)) static long do_saa5246a_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct saa5246a_device *t = video_drvdata(file);

 switch(cmd)
 {
  case 136:
  {
   vtx_info_t *info = arg;

   info->version_major = MAJOR_VERSION;
   info->version_minor = MINOR_VERSION;
   info->numpages = NUM_DAUS;
   return 0;
  }

  case 137:
  {
   vtx_pagereq_t *req = arg;

   if (req->pgbuf < 0 || req->pgbuf >= NUM_DAUS)
    return -EINVAL;
   memset(t->pgbuf[req->pgbuf], ' ', sizeof(t->pgbuf[0]));
   return 0;
  }

  case 138:
  {
   vtx_pagereq_t *req = arg;

   if (req->pgbuf < 0 || req->pgbuf >= NUM_DAUS)
    return -EINVAL;
   return(saa5246a_clear_found_bit(t, req->pgbuf));
  }

  case 133:
  {
   vtx_pagereq_t *req = arg;

   return(saa5246a_request_page(t, req));
  }

  case 134:
  {
   vtx_pagereq_t *req = arg;
   vtx_pageinfo_t info;
   int rval;

   if ((rval = saa5246a_get_status(t, &info, req->pgbuf)))
    return rval;
   if(copy_to_user(req->buffer, &info,
    sizeof(vtx_pageinfo_t)))
    return -EFAULT;
   return 0;
  }

  case 135:
  {
   vtx_pagereq_t *req = arg;

   return(saa5246a_get_page(t, req));
  }

  case 128:
  {
   vtx_pagereq_t *req = arg;

   return(saa5246a_stop_dau(t, req->pgbuf));
  }

  case 132:
  case 130:
  case 131:
   return 0;

  case 139:
  {
   return 0;
  }

  case 129:
  {

   return 0;
  }
 }
 return -EINVAL;
}
