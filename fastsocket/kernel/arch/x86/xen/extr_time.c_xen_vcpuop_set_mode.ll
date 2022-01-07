; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_xen_vcpuop_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_xen_vcpuop_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@VCPUOP_stop_periodic_timer = common dso_local global i32 0, align 4
@VCPUOP_stop_singleshot_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @xen_vcpuop_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_vcpuop_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %32 [
    i32 131, label %8
    i32 132, label %10
    i32 128, label %18
    i32 129, label %18
    i32 130, label %31
  ]

8:                                                ; preds = %2
  %9 = call i32 @WARN_ON(i32 1)
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* @VCPUOP_stop_periodic_timer, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @HYPERVISOR_vcpu_op(i32 %11, i32 %12, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %10
  br label %32

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @VCPUOP_stop_singleshot_timer, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @HYPERVISOR_vcpu_op(i32 %19, i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @VCPUOP_stop_periodic_timer, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @HYPERVISOR_vcpu_op(i32 %24, i32 %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %18
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %23
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %2, %31, %30, %17, %8
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
