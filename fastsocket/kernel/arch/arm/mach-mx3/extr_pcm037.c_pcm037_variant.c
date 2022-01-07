
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pcm037_board_variant { ____Placeholder_pcm037_board_variant } pcm037_board_variant ;


 int pcm037_instance ;

enum pcm037_board_variant pcm037_variant(void)
{
 return pcm037_instance;
}
