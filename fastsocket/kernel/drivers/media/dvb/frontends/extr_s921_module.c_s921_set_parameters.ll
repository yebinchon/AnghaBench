; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_module.c_s921_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_module.c_s921_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.s921_state = type { i32 }
%struct.s921_isdb_t_transmission_mode_params = type { i32 }
%struct.s921_isdb_t_tune_params = type { i32 }

@ISDB_T_CMD_SET_PARAM = common dso_local global i32 0, align 4
@ISDB_T_CMD_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @s921_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_set_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.s921_state*, align 8
  %6 = alloca %struct.s921_isdb_t_transmission_mode_params, align 4
  %7 = alloca %struct.s921_isdb_t_tune_params, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.s921_state*
  store %struct.s921_state* %11, %struct.s921_state** %5, align 8
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.s921_isdb_t_tune_params, %struct.s921_isdb_t_tune_params* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.s921_state*, %struct.s921_state** %5, align 8
  %17 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %16, i32 0, i32 0
  %18 = load i32, i32* @ISDB_T_CMD_SET_PARAM, align 4
  %19 = bitcast %struct.s921_isdb_t_transmission_mode_params* %6 to %struct.s921_isdb_t_tune_params*
  %20 = call i32 @s921_isdb_cmd(i32* %17, i32 %18, %struct.s921_isdb_t_tune_params* %19)
  %21 = load %struct.s921_state*, %struct.s921_state** %5, align 8
  %22 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %21, i32 0, i32 0
  %23 = load i32, i32* @ISDB_T_CMD_TUNE, align 4
  %24 = call i32 @s921_isdb_cmd(i32* %22, i32 %23, %struct.s921_isdb_t_tune_params* %7)
  %25 = call i32 @mdelay(i32 100)
  ret i32 0
}

declare dso_local i32 @s921_isdb_cmd(i32*, i32, %struct.s921_isdb_t_tune_params*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
