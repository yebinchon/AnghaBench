
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rng_info {int rfd; } ;
struct device {struct rng_info* priv; } ;
struct TYPE_2__ {int device_num; } ;


 int O_RDONLY ;
 int VIRTIO_ID_RNG ;
 int VIRTQUEUE_NUM ;
 int add_virtqueue (struct device*,int ,int ) ;
 TYPE_1__ devices ;
 struct rng_info* malloc (int) ;
 struct device* new_device (char*,int ) ;
 int open_or_die (char*,int ) ;
 int rng_input ;
 int verbose (char*,int ) ;

__attribute__((used)) static void setup_rng(void)
{
 struct device *dev;
 struct rng_info *rng_info = malloc(sizeof(*rng_info));


 rng_info->rfd = open_or_die("/dev/random", O_RDONLY);


 dev = new_device("rng", VIRTIO_ID_RNG);
 dev->priv = rng_info;


 add_virtqueue(dev, VIRTQUEUE_NUM, rng_input);

 verbose("device %u: rng\n", devices.device_num++);
}
