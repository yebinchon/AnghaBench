
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36016 {int num; int name; } ;
struct videocodec {struct zr36016* data; } ;


 int EFAULT ;
 int dprintk (int,char*,int ,int ) ;
 int kfree (struct zr36016*) ;
 int zr36016_codecs ;

__attribute__((used)) static int
zr36016_unset (struct videocodec *codec)
{
 struct zr36016 *ptr = codec->data;

 if (ptr) {


  dprintk(1, "%s: finished codec #%d\n", ptr->name,
   ptr->num);
  kfree(ptr);
  codec->data = ((void*)0);

  zr36016_codecs--;
  return 0;
 }

 return -EFAULT;
}
