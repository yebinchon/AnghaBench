; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000mc_reset_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000mc_reset_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dibx000_bandwidth_config* }
%struct.dibx000_bandwidth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*)* @dib7000mc_reset_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000mc_reset_pll(%struct.dib7000m_state* %0) #0 {
  %2 = alloca %struct.dib7000m_state*, align 8
  %3 = alloca %struct.dibx000_bandwidth_config*, align 8
  %4 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %2, align 8
  %5 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  store %struct.dibx000_bandwidth_config* %8, %struct.dibx000_bandwidth_config** %3, align 8
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %10 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %11 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %15 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 0
  %18 = or i32 %13, %17
  %19 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %9, i32 907, i32 %18)
  %20 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %21 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 10
  %24 = or i32 12288, %23
  %25 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %26 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 5
  %29 = or i32 %24, %28
  %30 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %31 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 4
  %34 = or i32 %29, %33
  %35 = or i32 %34, 8
  %36 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %37 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 1
  %40 = or i32 %35, %39
  %41 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %42 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 0
  %45 = or i32 %40, %44
  store i32 %45, i32* %4, align 4
  %46 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %46, i32 908, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 65527
  %51 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %52 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 3
  %55 = or i32 %50, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %56, i32 908, i32 %57)
  %59 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %60 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %61 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 6144, %63
  %65 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %66 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 7
  %69 = or i32 %64, %68
  %70 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %59, i32 910, i32 %69)
  %71 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %72 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %73 = call i32 @dib7000m_reset_pll_common(%struct.dib7000m_state* %71, %struct.dibx000_bandwidth_config* %72)
  ret void
}

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_reset_pll_common(%struct.dib7000m_state*, %struct.dibx000_bandwidth_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
