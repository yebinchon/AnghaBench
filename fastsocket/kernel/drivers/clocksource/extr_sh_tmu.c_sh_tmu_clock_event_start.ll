; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clock_event_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clock_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_priv = type { i32, i32, %struct.clock_event_device }
%struct.clock_event_device = type { i32, i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_priv*, i32)* @sh_tmu_clock_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_clock_event_start(%struct.sh_tmu_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_tmu_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_event_device*, align 8
  store %struct.sh_tmu_priv* %0, %struct.sh_tmu_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %7 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %6, i32 0, i32 2
  store %struct.clock_event_device* %7, %struct.clock_event_device** %5, align 8
  %8 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %9 = call i32 @sh_tmu_enable(%struct.sh_tmu_priv* %8)
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 0
  store i32 32, i32* %11, align 4
  %12 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NSEC_PER_SEC, align 4
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @div_sc(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %21 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %23 = call i32 @clockevent_delta2ns(i32 -1, %struct.clock_event_device* %22)
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 1
  store i32 5000, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %32 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 2
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* @HZ, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %40 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %42 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %43 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sh_tmu_set_next(%struct.sh_tmu_priv* %41, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @sh_tmu_enable(%struct.sh_tmu_priv*) #1

declare dso_local i32 @div_sc(i32, i32, i32) #1

declare dso_local i32 @clockevent_delta2ns(i32, %struct.clock_event_device*) #1

declare dso_local i32 @sh_tmu_set_next(%struct.sh_tmu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
