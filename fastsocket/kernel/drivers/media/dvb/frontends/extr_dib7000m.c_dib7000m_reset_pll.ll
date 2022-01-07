; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_reset_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_reset_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.dibx000_bandwidth_config* }
%struct.dibx000_bandwidth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*)* @dib7000m_reset_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000m_reset_pll(%struct.dib7000m_state* %0) #0 {
  %2 = alloca %struct.dib7000m_state*, align 8
  %3 = alloca %struct.dibx000_bandwidth_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %2, align 8
  %6 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %8, align 8
  store %struct.dibx000_bandwidth_config* %9, %struct.dibx000_bandwidth_config** %3, align 8
  %10 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %11 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 15
  %14 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %15 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 7
  %18 = or i32 %13, %17
  %19 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %20 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 6
  %23 = or i32 %18, %22
  %24 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %25 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 5
  %28 = or i32 %23, %27
  %29 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %30 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 2
  %33 = or i32 %28, %32
  %34 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %35 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 1
  %38 = or i32 %33, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %40 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 6
  %43 = and i32 %42, 3
  %44 = shl i32 %43, 3
  %45 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %46 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 1
  %49 = or i32 %44, %48
  %50 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %51 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %55 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %1
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, 32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %63 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, 8192
  store i32 %69, i32* %4, align 4
  br label %73

70:                                               ; preds = %59
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, 4096
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %88

74:                                               ; preds = %1
  %75 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %76 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 63
  %79 = shl i32 %78, 9
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %83 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 5
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %74, %73
  %89 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %89, i32 910, i32 %90)
  %92 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %92, i32 907, i32 %93)
  %95 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %96 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %95, i32 908, i32 6)
  %97 = load %struct.dib7000m_state*, %struct.dib7000m_state** %2, align 8
  %98 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %99 = call i32 @dib7000m_reset_pll_common(%struct.dib7000m_state* %97, %struct.dibx000_bandwidth_config* %98)
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
