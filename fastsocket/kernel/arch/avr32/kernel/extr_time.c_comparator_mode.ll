; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_time.c_comparator_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_time.c_comparator_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s: start\0A\00", align 1
@COMPARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @comparator_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comparator_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %21 [
    i32 131, label %6
    i32 130, label %11
    i32 128, label %13
    i32 129, label %13
  ]

6:                                                ; preds = %2
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %8 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %2, %6
  %12 = call i32 (...) @cpu_disable_idle_sleep()
  br label %23

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @COMPARE, align 4
  %15 = call i32 @sysreg_write(i32 %14, i32 0)
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @cpu_enable_idle_sleep()
  br label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %21, %13, %11
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @cpu_disable_idle_sleep(...) #1

declare dso_local i32 @sysreg_write(i32, i32) #1

declare dso_local i32 @cpu_enable_idle_sleep(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
