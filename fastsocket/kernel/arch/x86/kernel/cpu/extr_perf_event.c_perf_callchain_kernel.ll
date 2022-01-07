; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_callchain_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_callchain_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }
%struct.perf_callchain_entry = type { i32 }
%struct.pt_regs = type { i32 }

@perf_guest_cbs = common dso_local global %struct.TYPE_2__* null, align 8
@backtrace_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_kernel(%struct.perf_callchain_entry* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store %struct.perf_callchain_entry* %0, %struct.perf_callchain_entry** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (...)*, i64 (...)** %9, align 8
  %11 = call i64 (...) %10()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %23

14:                                               ; preds = %7, %2
  %15 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %3, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @perf_callchain_store(%struct.perf_callchain_entry* %15, i32 %18)
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %3, align 8
  %22 = call i32 @dump_trace(i32* null, %struct.pt_regs* %20, i32* null, i32* @backtrace_ops, %struct.perf_callchain_entry* %21)
  br label %23

23:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry*, i32) #1

declare dso_local i32 @dump_trace(i32*, %struct.pt_regs*, i32*, i32*, %struct.perf_callchain_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
