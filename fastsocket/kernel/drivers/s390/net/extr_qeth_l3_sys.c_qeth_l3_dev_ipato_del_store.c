
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qeth_card {int conf_mutex; } ;
typedef int ssize_t ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l3_del_ipato_entry (struct qeth_card*,int,int *,int) ;
 int qeth_l3_parse_ipatoe (char const*,int,int *,int*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_ipato_del_store(const char *buf, size_t count,
    struct qeth_card *card, enum qeth_prot_versions proto)
{
 u8 addr[16];
 int mask_bits;
 int rc = 0;

 mutex_lock(&card->conf_mutex);
 rc = qeth_l3_parse_ipatoe(buf, proto, addr, &mask_bits);
 if (!rc)
  qeth_l3_del_ipato_entry(card, proto, addr, mask_bits);
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
