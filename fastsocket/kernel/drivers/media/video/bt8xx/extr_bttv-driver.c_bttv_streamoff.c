
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int bttv_queue (struct bttv_fh*) ;
 int bttv_resource (struct bttv_fh*) ;
 int free_btres_lock (struct bttv*,struct bttv_fh*,int) ;
 int videobuf_streamoff (int ) ;

__attribute__((used)) static int bttv_streamoff(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 int retval;
 int res = bttv_resource(fh);


 retval = videobuf_streamoff(bttv_queue(fh));
 if (retval < 0)
  return retval;
 free_btres_lock(btv, fh, res);
 return 0;
}
