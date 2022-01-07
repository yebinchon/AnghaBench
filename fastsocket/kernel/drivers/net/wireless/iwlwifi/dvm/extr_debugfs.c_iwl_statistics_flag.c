
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flag; int lock; } ;
struct iwl_priv {TYPE_1__ statistics; } ;


 int UCODE_STATISTICS_CLEAR_MSK ;
 int UCODE_STATISTICS_FREQUENCY_MSK ;
 int UCODE_STATISTICS_NARROW_BAND_MSK ;
 int le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ scnprintf (char*,int,char*,...) ;

__attribute__((used)) static int iwl_statistics_flag(struct iwl_priv *priv, char *buf, int bufsz)
{
 int p = 0;
 u32 flag;

 lockdep_assert_held(&priv->statistics.lock);

 flag = le32_to_cpu(priv->statistics.flag);

 p += scnprintf(buf + p, bufsz - p, "Statistics Flag(0x%X):\n", flag);
 if (flag & UCODE_STATISTICS_CLEAR_MSK)
  p += scnprintf(buf + p, bufsz - p,
  "\tStatistics have been cleared\n");
 p += scnprintf(buf + p, bufsz - p, "\tOperational Frequency: %s\n",
  (flag & UCODE_STATISTICS_FREQUENCY_MSK)
  ? "2.4 GHz" : "5.2 GHz");
 p += scnprintf(buf + p, bufsz - p, "\tTGj Narrow Band: %s\n",
  (flag & UCODE_STATISTICS_NARROW_BAND_MSK)
   ? "enabled" : "disabled");

 return p;
}
