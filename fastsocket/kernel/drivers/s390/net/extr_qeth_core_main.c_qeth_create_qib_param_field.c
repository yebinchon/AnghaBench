
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 unsigned int QETH_PCI_THRESHOLD_A (struct qeth_card*) ;
 unsigned int QETH_PCI_THRESHOLD_B (struct qeth_card*) ;
 unsigned int QETH_PCI_TIMER_VALUE (struct qeth_card*) ;
 char* _ascebc ;

__attribute__((used)) static void qeth_create_qib_param_field(struct qeth_card *card,
  char *param_field)
{

 param_field[0] = _ascebc['P'];
 param_field[1] = _ascebc['C'];
 param_field[2] = _ascebc['I'];
 param_field[3] = _ascebc['T'];
 *((unsigned int *) (&param_field[4])) = QETH_PCI_THRESHOLD_A(card);
 *((unsigned int *) (&param_field[8])) = QETH_PCI_THRESHOLD_B(card);
 *((unsigned int *) (&param_field[12])) = QETH_PCI_TIMER_VALUE(card);
}
