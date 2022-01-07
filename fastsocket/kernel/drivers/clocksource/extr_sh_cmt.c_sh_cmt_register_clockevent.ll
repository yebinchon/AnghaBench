; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register_clockevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register_clockevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { %struct.clock_event_device }
%struct.clock_event_device = type { i8*, i64, i32, i32, i32, i32 }

@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@sh_cmt_clock_event_next = common dso_local global i32 0, align 4
@sh_cmt_clock_event_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"sh_cmt: %s used for clock events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_priv*, i8*, i64)* @sh_cmt_register_clockevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_register_clockevent(%struct.sh_cmt_priv* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sh_cmt_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clock_event_device*, align 8
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %9 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %8, i32 0, i32 0
  store %struct.clock_event_device* %9, %struct.clock_event_device** %7, align 8
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %11 = call i32 @memset(%struct.clock_event_device* %10, i32 0, i32 32)
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %14 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = call i32 @cpumask_of(i32 0)
  %27 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %28 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @sh_cmt_clock_event_next, align 4
  %30 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %31 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @sh_cmt_clock_event_mode, align 4
  %33 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %40 = call i32 @clockevents_register_device(%struct.clock_event_device* %39)
  ret void
}

declare dso_local i32 @memset(%struct.clock_event_device*, i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @clockevents_register_device(%struct.clock_event_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
