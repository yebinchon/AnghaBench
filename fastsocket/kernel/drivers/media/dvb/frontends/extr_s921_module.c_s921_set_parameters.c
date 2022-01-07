
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int dev; } ;
struct s921_isdb_t_tune_params {int frequency; } ;
struct s921_isdb_t_transmission_mode_params {int frequency; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;


 int ISDB_T_CMD_SET_PARAM ;
 int ISDB_T_CMD_TUNE ;
 int mdelay (int) ;
 int s921_isdb_cmd (int *,int ,struct s921_isdb_t_tune_params*) ;

__attribute__((used)) static int s921_set_parameters(struct dvb_frontend *fe, struct dvb_frontend_parameters *param) {
 struct s921_state *state = (struct s921_state *)fe->demodulator_priv;
 struct s921_isdb_t_transmission_mode_params params;
 struct s921_isdb_t_tune_params tune_params;

 tune_params.frequency = param->frequency;
 s921_isdb_cmd(&state->dev, ISDB_T_CMD_SET_PARAM, &params);
 s921_isdb_cmd(&state->dev, ISDB_T_CMD_TUNE, &tune_params);
 mdelay(100);
 return 0;
}
