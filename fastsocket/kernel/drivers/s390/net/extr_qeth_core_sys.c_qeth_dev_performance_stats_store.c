
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_perf_stats {int dummy; } ;
struct TYPE_5__ {int tx_packets; int rx_packets; } ;
struct TYPE_6__ {int initial_tx_packets; int initial_rx_packets; } ;
struct TYPE_4__ {int performance_stats; } ;
struct qeth_card {int conf_mutex; TYPE_2__ stats; TYPE_3__ perf_stats; TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int memset (TYPE_3__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t qeth_dev_performance_stats_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int i, rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 i = simple_strtoul(buf, &tmp, 16);
 if ((i == 0) || (i == 1)) {
  if (i == card->options.performance_stats)
   goto out;;
  card->options.performance_stats = i;
  if (i == 0)
   memset(&card->perf_stats, 0,
    sizeof(struct qeth_perf_stats));
  card->perf_stats.initial_rx_packets = card->stats.rx_packets;
  card->perf_stats.initial_tx_packets = card->stats.tx_packets;
 } else
  rc = -EINVAL;
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
