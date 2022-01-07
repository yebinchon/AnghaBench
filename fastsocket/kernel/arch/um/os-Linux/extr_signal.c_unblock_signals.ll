; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_signal.c_unblock_signals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_signal.c_unblock_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signals_enabled = common dso_local global i32 0, align 4
@signals_pending = common dso_local global i32 0, align 4
@SIGIO_MASK = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGVTALRM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unblock_signals() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @signals_enabled, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %28

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %27
  store i32 1, i32* @signals_enabled, align 4
  %7 = call i32 (...) @barrier()
  %8 = load i32, i32* @signals_pending, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %28

12:                                               ; preds = %6
  store i32 0, i32* @signals_pending, align 4
  store i32 0, i32* @signals_enabled, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @SIGIO_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @SIGIO, align 4
  %19 = call i32 @sig_handler_common(i32 %18, i32* null)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @SIGVTALRM_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @real_alarm_handler(i32* null)
  br label %27

27:                                               ; preds = %25, %20
  br label %6

28:                                               ; preds = %11, %4
  ret void
}

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @sig_handler_common(i32, i32*) #1

declare dso_local i32 @real_alarm_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
