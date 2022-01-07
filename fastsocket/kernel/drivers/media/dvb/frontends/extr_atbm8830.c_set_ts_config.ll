; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_ts_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atbm_state = type { %struct.atbm8830_config* }
%struct.atbm8830_config = type { i64, i64, i64 }

@REG_TS_SERIAL = common dso_local global i32 0, align 4
@REG_TS_CLK_MODE = common dso_local global i32 0, align 4
@REG_TS_SAMPLE_EDGE = common dso_local global i32 0, align 4
@REG_TS_CLK_FREERUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atbm_state*)* @set_ts_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ts_config(%struct.atbm_state* %0) #0 {
  %2 = alloca %struct.atbm_state*, align 8
  %3 = alloca %struct.atbm8830_config*, align 8
  store %struct.atbm_state* %0, %struct.atbm_state** %2, align 8
  %4 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %5 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %4, i32 0, i32 0
  %6 = load %struct.atbm8830_config*, %struct.atbm8830_config** %5, align 8
  store %struct.atbm8830_config* %6, %struct.atbm8830_config** %3, align 8
  %7 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %8 = load i32, i32* @REG_TS_SERIAL, align 4
  %9 = load %struct.atbm8830_config*, %struct.atbm8830_config** %3, align 8
  %10 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = call i32 @atbm8830_write_reg(%struct.atbm_state* %7, i32 %8, i32 %14)
  %16 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %17 = load i32, i32* @REG_TS_CLK_MODE, align 4
  %18 = load %struct.atbm8830_config*, %struct.atbm8830_config** %3, align 8
  %19 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @atbm8830_write_reg(%struct.atbm_state* %16, i32 %17, i32 %23)
  %25 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %26 = load i32, i32* @REG_TS_SAMPLE_EDGE, align 4
  %27 = load %struct.atbm8830_config*, %struct.atbm8830_config** %3, align 8
  %28 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = call i32 @atbm8830_write_reg(%struct.atbm_state* %25, i32 %26, i32 %32)
  %34 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %35 = load i32, i32* @REG_TS_CLK_FREERUN, align 4
  %36 = load %struct.atbm8830_config*, %struct.atbm8830_config** %3, align 8
  %37 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  %42 = call i32 @atbm8830_write_reg(%struct.atbm_state* %34, i32 %35, i32 %41)
  ret i32 0
}

declare dso_local i32 @atbm8830_write_reg(%struct.atbm_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
