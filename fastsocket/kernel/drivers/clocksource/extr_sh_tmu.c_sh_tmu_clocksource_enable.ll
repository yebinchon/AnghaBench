; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clocksource_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clocksource_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32, i32 }
%struct.sh_tmu_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @sh_tmu_clocksource_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_clocksource_enable(%struct.clocksource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clocksource*, align 8
  %4 = alloca %struct.sh_tmu_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %3, align 8
  %6 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %7 = call %struct.sh_tmu_priv* @cs_to_sh_tmu(%struct.clocksource* %6)
  store %struct.sh_tmu_priv* %7, %struct.sh_tmu_priv** %4, align 8
  %8 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %9 = call i32 @sh_tmu_enable(%struct.sh_tmu_priv* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %16 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %15, i32 0, i32 0
  store i32 10, i32* %16, align 4
  %17 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %21 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clocksource_hz2mult(i32 %19, i32 %22)
  %24 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %25 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.sh_tmu_priv* @cs_to_sh_tmu(%struct.clocksource*) #1

declare dso_local i32 @sh_tmu_enable(%struct.sh_tmu_priv*) #1

declare dso_local i32 @clocksource_hz2mult(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
