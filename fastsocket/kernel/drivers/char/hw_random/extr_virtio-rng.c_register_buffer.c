
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int BUG () ;
 scalar_t__ RANDOM_DATA_SIZE ;
 scalar_t__ data_left ;
 scalar_t__ random_data ;
 int sg_init_one (struct scatterlist*,scalar_t__,scalar_t__) ;
 scalar_t__ virtqueue_add_buf (int ,struct scatterlist*,int ,int,scalar_t__) ;
 int virtqueue_kick (int ) ;
 int vq ;

__attribute__((used)) static void register_buffer(void)
{
 struct scatterlist sg;

 sg_init_one(&sg, random_data+data_left, RANDOM_DATA_SIZE-data_left);

 if (virtqueue_add_buf(vq, &sg, 0, 1, random_data) < 0)
  BUG();

 virtqueue_kick(vq);
}
