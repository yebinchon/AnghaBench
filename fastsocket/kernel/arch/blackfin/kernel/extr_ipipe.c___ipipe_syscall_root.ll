; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_syscall_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_syscall_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i64 }
%struct.ipipe_percpu_domain_data = type { i32 }

@NR_syscalls = common dso_local global i64 0, align 8
@__ipipe_irq_tail_hook = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_EVNOTIFY = common dso_local global i32 0, align 4
@IPIPE_EVENT_SYSCALL = common dso_local global i32 0, align 4
@__ipipe_root_domain_p = common dso_local global i32 0, align 4
@IPIPE_IRQMASK_VIRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipipe_syscall_root(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.ipipe_percpu_domain_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca void ()*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NR_syscalls, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @__ipipe_irq_tail_hook, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to void ()*
  store void ()* %16, void ()** %7, align 8
  %17 = load void ()*, void ()** %7, align 8
  call void %17()
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PF_EVNOTIFY, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %58

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @IPIPE_EVENT_SYSCALL, align 4
  %28 = call i32 @__ipipe_event_monitored_p(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %58

31:                                               ; preds = %26
  %32 = load i32, i32* @IPIPE_EVENT_SYSCALL, align 4
  %33 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %34 = call i32 @__ipipe_dispatch_event(i32 %32, %struct.pt_regs* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @local_irq_save_hw(i64 %35)
  %37 = load i32, i32* @__ipipe_root_domain_p, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @local_irq_restore_hw(i64 %40)
  store i32 1, i32* %2, align 4
  br label %58

42:                                               ; preds = %31
  %43 = call %struct.ipipe_percpu_domain_data* (...) @ipipe_root_cpudom_ptr()
  store %struct.ipipe_percpu_domain_data* %43, %struct.ipipe_percpu_domain_data** %4, align 8
  %44 = load %struct.ipipe_percpu_domain_data*, %struct.ipipe_percpu_domain_data** %4, align 8
  %45 = getelementptr inbounds %struct.ipipe_percpu_domain_data, %struct.ipipe_percpu_domain_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPIPE_IRQMASK_VIRT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @IPIPE_IRQMASK_VIRT, align 4
  %52 = call i32 @__ipipe_sync_pipeline(i32 %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @local_irq_restore_hw(i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %39, %30, %24
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @__ipipe_event_monitored_p(i32) #1

declare dso_local i32 @__ipipe_dispatch_event(i32, %struct.pt_regs*) #1

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

declare dso_local %struct.ipipe_percpu_domain_data* @ipipe_root_cpudom_ptr(...) #1

declare dso_local i32 @__ipipe_sync_pipeline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
