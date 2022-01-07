; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_atbm8830_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_atbm8830_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.atbm_state* }
%struct.atbm_state = type { %struct.atbm8830_config* }
%struct.atbm8830_config = type { i32, i32, i32, i32, i32 }

@REG_DEMOD_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @atbm8830_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atbm8830_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.atbm_state*, align 8
  %4 = alloca %struct.atbm8830_config*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.atbm_state*, %struct.atbm_state** %6, align 8
  store %struct.atbm_state* %7, %struct.atbm_state** %3, align 8
  %8 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %9 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %8, i32 0, i32 0
  %10 = load %struct.atbm8830_config*, %struct.atbm8830_config** %9, align 8
  store %struct.atbm8830_config* %10, %struct.atbm8830_config** %4, align 8
  %11 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %12 = load %struct.atbm8830_config*, %struct.atbm8830_config** %4, align 8
  %13 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @set_osc_freq(%struct.atbm_state* %11, i32 %14)
  %16 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %17 = load %struct.atbm8830_config*, %struct.atbm8830_config** %4, align 8
  %18 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_if_freq(%struct.atbm_state* %16, i32 %19)
  %21 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %22 = load %struct.atbm8830_config*, %struct.atbm8830_config** %4, align 8
  %23 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.atbm8830_config*, %struct.atbm8830_config** %4, align 8
  %26 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atbm8830_config*, %struct.atbm8830_config** %4, align 8
  %29 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_agc_config(%struct.atbm_state* %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %33 = call i32 @set_static_channel_mode(%struct.atbm_state* %32)
  %34 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %35 = call i32 @set_ts_config(%struct.atbm_state* %34)
  %36 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %37 = call i32 @atbm8830_write_reg(%struct.atbm_state* %36, i32 10, i32 0)
  %38 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %39 = call i32 @atbm8830_write_reg(%struct.atbm_state* %38, i32 524, i32 11)
  %40 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %41 = load i32, i32* @REG_DEMOD_RUN, align 4
  %42 = call i32 @atbm8830_write_reg(%struct.atbm_state* %40, i32 %41, i32 1)
  ret i32 0
}

declare dso_local i32 @set_osc_freq(%struct.atbm_state*, i32) #1

declare dso_local i32 @set_if_freq(%struct.atbm_state*, i32) #1

declare dso_local i32 @set_agc_config(%struct.atbm_state*, i32, i32, i32) #1

declare dso_local i32 @set_static_channel_mode(%struct.atbm_state*) #1

declare dso_local i32 @set_ts_config(%struct.atbm_state*) #1

declare dso_local i32 @atbm8830_write_reg(%struct.atbm_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
