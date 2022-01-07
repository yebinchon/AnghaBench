; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmiclock_32.c_vmi_timer_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmiclock_32.c_vmi_timer_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i32)*, i64 (i32)* }
%struct.clock_event_device = type { i64 }

@vmi_timer_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VMI_ONESHOT = common dso_local global i32 0, align 4
@CLOCK_EVT_MODE_ONESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @vmi_timer_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmi_timer_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 1), align 8
  %7 = load i32, i32* @VMI_ONESHOT, align 4
  %8 = call i32 @vmi_counter(i32 %7)
  %9 = call i64 %6(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CLOCK_EVT_MODE_ONESHOT, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 0), align 8
  %18 = load i32, i32* @VMI_ONESHOT, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %19, %20
  %22 = call i32 %17(i32 %18, i64 %21, i32 0)
  ret i32 0
}

declare dso_local i32 @vmi_counter(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
