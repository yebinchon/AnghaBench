; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_reset_pll_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_reset_pll_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }
%struct.dibx000_bandwidth_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ifreq: %d %x, inversion: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, %struct.dibx000_bandwidth_config*)* @dib8000_reset_pll_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_reset_pll_common(%struct.dib8000_state* %0, %struct.dibx000_bandwidth_config* %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca %struct.dibx000_bandwidth_config*, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store %struct.dibx000_bandwidth_config* %1, %struct.dibx000_bandwidth_config** %4, align 8
  %5 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %6 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %9 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %12 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 25
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %14)
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %17 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %18 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 65535
  %23 = call i32 @dib8000_write_word(%struct.dib8000_state* %16, i32 23, i32 %22)
  %24 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %25 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %26 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = and i32 %28, 65535
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %24, i32 24, i32 %29)
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %32 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %33 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 511
  %37 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 27, i32 %36)
  %38 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %39 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %40 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 65535
  %43 = call i32 @dib8000_write_word(%struct.dib8000_state* %38, i32 28, i32 %42)
  %44 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %45 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %46 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 25
  %49 = and i32 %48, 3
  %50 = call i32 @dib8000_write_word(%struct.dib8000_state* %44, i32 26, i32 %49)
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %52 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %53 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dib8000_write_word(%struct.dib8000_state* %51, i32 922, i32 %54)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
