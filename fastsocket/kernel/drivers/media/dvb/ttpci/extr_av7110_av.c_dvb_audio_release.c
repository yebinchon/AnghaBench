
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct av7110 {int dummy; } ;


 int RP_AUDIO ;
 int av7110_av_stop (struct av7110*,int ) ;
 int dprintk (int,char*,struct av7110*) ;
 int dvb_generic_release (struct inode*,struct file*) ;

__attribute__((used)) static int dvb_audio_release(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct av7110 *av7110 = dvbdev->priv;

 dprintk(2, "av7110:%p, \n", av7110);

 av7110_av_stop(av7110, RP_AUDIO);
 return dvb_generic_release(inode, file);
}
