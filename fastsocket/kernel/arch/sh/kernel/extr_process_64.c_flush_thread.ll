; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_64.c_flush_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_64.c_flush_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pt_regs*, %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@fake_swapper_regs = common dso_local global %struct.pt_regs zeroinitializer, align 4
@THREAD_SIZE = common dso_local global i64 0, align 8
@last_task_used_math = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_thread() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %5 = icmp eq %struct.pt_regs* %4, @fake_swapper_regs
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load i64, i64* @THREAD_SIZE, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %9 = ptrtoint %struct.TYPE_5__* %8 to i64
  %10 = add i64 %7, %9
  %11 = inttoptr i64 %10 to %struct.pt_regs*
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i64 -1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.pt_regs* %12, %struct.pt_regs** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.pt_regs*, %struct.pt_regs** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.pt_regs* %19, %struct.pt_regs** %22, align 8
  br label %23

23:                                               ; preds = %6, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
