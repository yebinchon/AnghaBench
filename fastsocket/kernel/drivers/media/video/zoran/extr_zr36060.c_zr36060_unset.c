
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36060 {int num; int name; } ;
struct videocodec {struct zr36060* data; } ;


 int EFAULT ;
 int dprintk (int,char*,int ,int ) ;
 int kfree (struct zr36060*) ;
 int zr36060_codecs ;

__attribute__((used)) static int
zr36060_unset (struct videocodec *codec)
{
 struct zr36060 *ptr = codec->data;

 if (ptr) {


  dprintk(1, "%s: finished codec #%d\n", ptr->name,
   ptr->num);
  kfree(ptr);
  codec->data = ((void*)0);

  zr36060_codecs--;
  return 0;
 }

 return -EFAULT;
}
