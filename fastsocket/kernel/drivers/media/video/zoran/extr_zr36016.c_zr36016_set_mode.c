
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36016 {int mode; int name; } ;
struct videocodec {scalar_t__ data; } ;


 int CODEC_DO_COMPRESSION ;
 int CODEC_DO_EXPANSION ;
 int EINVAL ;
 int dprintk (int,char*,int ,int) ;
 int zr36016_init (struct zr36016*) ;

__attribute__((used)) static int
zr36016_set_mode (struct videocodec *codec,
    int mode)
{
 struct zr36016 *ptr = (struct zr36016 *) codec->data;

 dprintk(2, "%s: set_mode %d call\n", ptr->name, mode);

 if ((mode != CODEC_DO_EXPANSION) && (mode != CODEC_DO_COMPRESSION))
  return -EINVAL;

 ptr->mode = mode;
 zr36016_init(ptr);

 return 0;
}
