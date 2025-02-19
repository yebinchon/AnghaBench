; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clock_event_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_clock_event_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32 }
%struct.sh_tmu_priv = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"sh_tmu: %s used for periodic clock events\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"sh_tmu: %s used for oneshot clock events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @sh_tmu_clock_event_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_clock_event_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.sh_tmu_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %8 = call %struct.sh_tmu_priv* @ced_to_sh_tmu(%struct.clock_event_device* %7)
  store %struct.sh_tmu_priv* %8, %struct.sh_tmu_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %10 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 130, label %12
    i32 131, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %5, align 8
  %14 = call i32 @sh_tmu_disable(%struct.sh_tmu_priv* %13)
  store i32 1, i32* %6, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %40 [
    i32 130, label %18
    i32 131, label %25
    i32 128, label %32
    i32 129, label %39
  ]

18:                                               ; preds = %16
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %5, align 8
  %24 = call i32 @sh_tmu_clock_event_start(%struct.sh_tmu_priv* %23, i32 1)
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %5, align 8
  %31 = call i32 @sh_tmu_clock_event_start(%struct.sh_tmu_priv* %30, i32 0)
  br label %41

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %5, align 8
  %37 = call i32 @sh_tmu_disable(%struct.sh_tmu_priv* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %41

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %16, %39
  br label %41

41:                                               ; preds = %40, %38, %25, %18
  ret void
}

declare dso_local %struct.sh_tmu_priv* @ced_to_sh_tmu(%struct.clock_event_device*) #1

declare dso_local i32 @sh_tmu_disable(%struct.sh_tmu_priv*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @sh_tmu_clock_event_start(%struct.sh_tmu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
