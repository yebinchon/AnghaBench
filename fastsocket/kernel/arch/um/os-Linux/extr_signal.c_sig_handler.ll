; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_signal.c_sig_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_signal.c_sig_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigcontext = type { i32 }

@signals_enabled = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGIO_MASK = common dso_local global i32 0, align 4
@signals_pending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sig_handler(i32 %0, %struct.sigcontext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigcontext*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sigcontext* %1, %struct.sigcontext** %4, align 8
  %6 = load i32, i32* @signals_enabled, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SIGIO, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @SIGIO_MASK, align 4
  %15 = load i32, i32* @signals_pending, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @signals_pending, align 4
  br label %24

17:                                               ; preds = %9, %2
  %18 = call i32 (...) @block_signals()
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %21 = call i32 @sig_handler_common(i32 %19, %struct.sigcontext* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @set_signals(i32 %22)
  br label %24

24:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @block_signals(...) #1

declare dso_local i32 @sig_handler_common(i32, %struct.sigcontext*) #1

declare dso_local i32 @set_signals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
