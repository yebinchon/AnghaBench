; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_reset_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_reset_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dibx000_bandwidth_config* }
%struct.dibx000_bandwidth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*)* @dib7000p_reset_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_reset_pll(%struct.dib7000p_state* %0) #0 {
  %2 = alloca %struct.dib7000p_state*, align 8
  %3 = alloca %struct.dibx000_bandwidth_config*, align 8
  %4 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %2, align 8
  %5 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %9 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %8, i64 0
  store %struct.dibx000_bandwidth_config* %9, %struct.dibx000_bandwidth_config** %3, align 8
  %10 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %11 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 63
  %14 = shl i32 %13, 9
  %15 = or i32 32768, %14
  %16 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %17 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 7
  %20 = or i32 %15, %19
  %21 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %22 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 6
  %25 = or i32 %20, %24
  %26 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %27 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 5
  %30 = or i32 %25, %29
  %31 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %32 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 2
  %35 = or i32 %30, %34
  %36 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %37 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 1
  %40 = or i32 %35, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %41, i32 900, i32 %42)
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %45 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %46 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 5
  %49 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %50 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 6
  %53 = and i32 %52, 3
  %54 = shl i32 %53, 3
  %55 = or i32 %48, %54
  %56 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %57 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 1
  %60 = or i32 %55, %59
  %61 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %62 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %44, i32 903, i32 %64)
  %66 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %67 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 15
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 32767
  %72 = or i32 %69, %71
  store i32 %72, i32* %4, align 4
  %73 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %73, i32 900, i32 %74)
  %76 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %77 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %78 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 1000
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 65535
  %83 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %76, i32 18, i32 %82)
  %84 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %85 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %86 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 1000
  %89 = and i32 %88, 65535
  %90 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %84, i32 19, i32 %89)
  %91 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %92 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %93 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 16
  %96 = and i32 %95, 65535
  %97 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %91, i32 21, i32 %96)
  %98 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %99 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %100 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 65535
  %103 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %98, i32 22, i32 %102)
  %104 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %105 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %106 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %104, i32 72, i32 %107)
  ret void
}

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
