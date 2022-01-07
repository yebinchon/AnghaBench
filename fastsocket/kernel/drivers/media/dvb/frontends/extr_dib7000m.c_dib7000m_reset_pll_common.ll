; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_reset_pll_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_reset_pll_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32 }
%struct.dibx000_bandwidth_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*, %struct.dibx000_bandwidth_config*)* @dib7000m_reset_pll_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000m_reset_pll_common(%struct.dib7000m_state* %0, %struct.dibx000_bandwidth_config* %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca %struct.dibx000_bandwidth_config*, align 8
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store %struct.dibx000_bandwidth_config* %1, %struct.dibx000_bandwidth_config** %4, align 8
  %5 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %6 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %7 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 1000
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 65535
  %12 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %5, i32 18, i32 %11)
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %14 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %15 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = and i32 %17, 65535
  %19 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %13, i32 19, i32 %18)
  %20 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %21 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %22 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 65535
  %26 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %20, i32 21, i32 %25)
  %27 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %28 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %29 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 65535
  %32 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %27, i32 22, i32 %31)
  %33 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %34 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %4, align 8
  %35 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %33, i32 928, i32 %36)
  ret void
}

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
