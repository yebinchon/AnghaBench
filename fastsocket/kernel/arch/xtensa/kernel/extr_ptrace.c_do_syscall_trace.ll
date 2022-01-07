; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_ptrace.c_do_syscall_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_ptrace.c_do_syscall_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@SIGTRAP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@PT_TRACESYSGOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_syscall_trace() #0 {
  %1 = load i32, i32* @SIGTRAP, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @PT_TRACESYSGOOD, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 128, i32 0
  %10 = or i32 %1, %9
  %11 = call i32 @ptrace_notify(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %21 = call i32 @send_sig(i64 %19, %struct.TYPE_3__* %20, i32 1)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @ptrace_notify(i32) #1

declare dso_local i32 @send_sig(i64, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
