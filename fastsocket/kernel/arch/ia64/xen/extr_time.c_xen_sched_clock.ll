; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_time.c_xen_sched_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_time.c_xen_sched_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_runstate_info = type { i64, i64, i64* }

@RUNSTATE_running = common dso_local global i64 0, align 8
@RUNSTATE_blocked = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @xen_sched_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xen_sched_clock() #0 {
  %1 = alloca %struct.vcpu_runstate_info, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = call i64 (...) @ia64_native_sched_clock()
  store i64 %6, i64* %2, align 8
  %7 = call i32 @get_runstate_snapshot(%struct.vcpu_runstate_info* %1)
  %8 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RUNSTATE_running, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  store i64 0, i64* %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %1, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %0
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %1, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %19, %21
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %18, %0
  %24 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %1, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @RUNSTATE_blocked, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.vcpu_runstate_info, %struct.vcpu_runstate_info* %1, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @RUNSTATE_running, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %28, %33
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %4, align 8
  %37 = call i32 (...) @preempt_enable()
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @ia64_native_sched_clock(...) #1

declare dso_local i32 @get_runstate_snapshot(%struct.vcpu_runstate_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
