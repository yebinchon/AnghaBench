
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int echo_lock; } ;


 int ECHO_OP_MOVE_BACK_COL ;
 int ECHO_OP_START ;
 int add_echo_byte (int ,struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void echo_move_back_col(struct tty_struct *tty)
{
 mutex_lock(&tty->echo_lock);

 add_echo_byte(ECHO_OP_START, tty);
 add_echo_byte(ECHO_OP_MOVE_BACK_COL, tty);

 mutex_unlock(&tty->echo_lock);
}
