; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_exit_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_exit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@IA64_THREAD_DBG_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_thread() #0 {
  %1 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %2 = call i32 @ia64_drop_fpu(%struct.TYPE_9__* %1)
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %4 = call i32 @task_pt_regs(%struct.TYPE_9__* %3)
  %5 = call i64 @IS_IA32_PROCESS(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %9 = call i32 @ia32_drop_ia64_partial_page_list(%struct.TYPE_9__* %8)
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @ia64_drop_fpu(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_IA32_PROCESS(i32) #1

declare dso_local i32 @task_pt_regs(%struct.TYPE_9__*) #1

declare dso_local i32 @ia32_drop_ia64_partial_page_list(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
