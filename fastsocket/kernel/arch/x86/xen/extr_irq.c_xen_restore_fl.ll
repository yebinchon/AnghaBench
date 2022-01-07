; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_irq.c_xen_restore_fl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_irq.c_xen_restore_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_info = type { i64, i32 }

@X86_EFLAGS_IF = common dso_local global i64 0, align 8
@xen_vcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xen_restore_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_restore_fl(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vcpu_info*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @X86_EFLAGS_IF, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = call i32 (...) @preempt_disable()
  %12 = load i32, i32* @xen_vcpu, align 4
  %13 = call %struct.vcpu_info* @percpu_read(i32 %12)
  store %struct.vcpu_info* %13, %struct.vcpu_info** %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.vcpu_info*, %struct.vcpu_info** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = call i32 (...) @preempt_enable_no_resched()
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = call i32 (...) @preempt_check_resched()
  %22 = call i32 (...) @barrier()
  %23 = load %struct.vcpu_info*, %struct.vcpu_info** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 (...) @xen_force_evtchn_callback()
  br label %30

30:                                               ; preds = %28, %20
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.vcpu_info* @percpu_read(i32) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @preempt_check_resched(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xen_force_evtchn_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
