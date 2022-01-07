; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmiclock_32.c_vmi_timer_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmiclock_32.c_vmi_timer_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32, i32, i32)*, i32 (i32)*, i32 (...)* }
%struct.clock_event_device = type { i32 }

@vmi_timer_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HZ = common dso_local global i32 0, align 4
@VMI_PERIODIC = common dso_local global i32 0, align 4
@VMI_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @vmi_timer_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmi_timer_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %7 = call i32 (...) @irqs_disabled()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %43 [
    i32 132, label %13
    i32 130, label %13
    i32 131, label %14
    i32 128, label %29
    i32 129, label %29
  ]

13:                                               ; preds = %2, %2
  br label %44

14:                                               ; preds = %2
  %15 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 3), align 8
  %16 = call i32 (...) %15()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HZ, align 4
  %19 = call i32 @do_div(i32 %17, i32 %18)
  %20 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 2), align 8
  %21 = load i32, i32* @VMI_PERIODIC, align 4
  %22 = call i32 @vmi_counter(i32 %21)
  %23 = call i32 %20(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 1), align 8
  %25 = load i32, i32* @VMI_PERIODIC, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 %24(i32 %25, i32 %26, i32 %27)
  br label %44

29:                                               ; preds = %2, %2
  %30 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %31 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 132, label %33
    i32 131, label %37
  ]

33:                                               ; preds = %29
  %34 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 0), align 8
  %35 = load i32, i32* @VMI_ONESHOT, align 4
  %36 = call i32 %34(i32 %35)
  br label %42

37:                                               ; preds = %29
  %38 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_timer_ops, i32 0, i32 0), align 8
  %39 = load i32, i32* @VMI_PERIODIC, align 4
  %40 = call i32 %38(i32 %39)
  br label %42

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %37, %33
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %42, %14, %13
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @vmi_counter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
