
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {TYPE_1__* host; } ;
struct inode {int dummy; } ;
struct file_ctx {int * current_ctx; int context_list; struct ti_ohci* ohci; } ;
struct file {struct file_ctx* private_data; } ;
struct TYPE_2__ {int id; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;
 int PRINT (int ,int ,char*) ;
 struct ti_ohci* hpsb_get_hostinfo_bykey (int *,int) ;
 int ieee1394_file_to_instance (struct file*) ;
 struct file_ctx* kzalloc (int,int ) ;
 int video1394_highlevel ;

__attribute__((used)) static int video1394_open(struct inode *inode, struct file *file)
{
 int i = ieee1394_file_to_instance(file);
 struct ti_ohci *ohci;
 struct file_ctx *ctx;

 ohci = hpsb_get_hostinfo_bykey(&video1394_highlevel, i);
        if (ohci == ((void*)0))
                return -EIO;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  PRINT(KERN_ERR, ohci->host->id, "Cannot malloc file_ctx");
  return -ENOMEM;
 }

 ctx->ohci = ohci;
 INIT_LIST_HEAD(&ctx->context_list);
 ctx->current_ctx = ((void*)0);
 file->private_data = ctx;

 return 0;
}
