
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {scalar_t__ recovery_task; } ;


 scalar_t__ current ;

__attribute__((used)) static bool qeth_is_recovery_task(const struct qeth_card *card)
{
 return card->recovery_task == current;
}
