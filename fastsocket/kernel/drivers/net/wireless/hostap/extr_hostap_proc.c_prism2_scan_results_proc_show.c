
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct seq_file {TYPE_1__* private; } ;
struct hfa384x_hostscan_result {unsigned char* sup_rates; unsigned char* ssid; int ssid_len; int atim; int bssid; int rate; int capability; int beacon_interval; int sl; int anl; int chid; } ;
typedef int s16 ;
struct TYPE_2__ {struct hfa384x_hostscan_result* last_scan_results; } ;
typedef TYPE_1__ local_info_t ;


 void* SEQ_START_TOKEN ;
 int le16_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int prism2_scan_results_proc_show(struct seq_file *m, void *v)
{
 local_info_t *local = m->private;
 unsigned long entry;
 int i, len;
 struct hfa384x_hostscan_result *scanres;
 u8 *p;

 if (v == SEQ_START_TOKEN) {
  seq_printf(m,
      "CHID ANL SL BcnInt Capab Rate BSSID ATIM SupRates SSID\n");
  return 0;
 }

 entry = (unsigned long)v - 2;
 scanres = &local->last_scan_results[entry];

 seq_printf(m, "%d %d %d %d 0x%02x %d %pM %d ",
     le16_to_cpu(scanres->chid),
     (s16) le16_to_cpu(scanres->anl),
     (s16) le16_to_cpu(scanres->sl),
     le16_to_cpu(scanres->beacon_interval),
     le16_to_cpu(scanres->capability),
     le16_to_cpu(scanres->rate),
     scanres->bssid,
     le16_to_cpu(scanres->atim));

 p = scanres->sup_rates;
 for (i = 0; i < sizeof(scanres->sup_rates); i++) {
  if (p[i] == 0)
   break;
  seq_printf(m, "<%02x>", p[i]);
 }
 seq_putc(m, ' ');

 p = scanres->ssid;
 len = le16_to_cpu(scanres->ssid_len);
 if (len > 32)
  len = 32;
 for (i = 0; i < len; i++) {
  unsigned char c = p[i];
  if (c >= 32 && c < 127)
   seq_putc(m, c);
  else
   seq_printf(m, "<%02x>", c);
 }
 seq_putc(m, '\n');
 return 0;
}
