
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ min_numbuffers; scalar_t__ min_bufsize; scalar_t__ device_bufsize; scalar_t__ numbuffers; } ;


 int GFP_KERNEL ;
 scalar_t__ bufsize ;
 TYPE_1__ config_params ;
 struct vpfe_device* kzalloc (int,int ) ;
 scalar_t__ numbuffers ;

__attribute__((used)) static struct vpfe_device *vpfe_initialize(void)
{
 struct vpfe_device *vpfe_dev;


 if ((numbuffers > 0) &&
     (numbuffers < config_params.min_numbuffers))
  numbuffers = config_params.min_numbuffers;





 if (bufsize < config_params.min_bufsize)
  bufsize = config_params.min_bufsize;

 config_params.numbuffers = numbuffers;

 if (numbuffers)
  config_params.device_bufsize = bufsize;


 vpfe_dev = kzalloc(sizeof(*vpfe_dev), GFP_KERNEL);

 return vpfe_dev;
}
