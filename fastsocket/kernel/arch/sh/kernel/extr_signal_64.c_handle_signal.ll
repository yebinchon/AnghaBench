; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_signal_64.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_signal_64.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pt_regs = type { i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_ONESHOT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SA_NODEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, %struct.k_sigaction*, i32*, %struct.pt_regs*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_signal(i64 %0, i32* %1, %struct.k_sigaction* %2, i32* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.k_sigaction*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.k_sigaction* %2, %struct.k_sigaction** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %12 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %13 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SA_SIGINFO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %25 = call i32 @setup_rt_frame(i64 %20, %struct.k_sigaction* %21, i32* %22, i32* %23, %struct.pt_regs* %24)
  store i32 %25, i32* %11, align 4
  br label %32

26:                                               ; preds = %5
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %31 = call i32 @setup_frame(i64 %27, %struct.k_sigaction* %28, i32* %29, %struct.pt_regs* %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %34 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SA_ONESHOT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @SIG_DFL, align 4
  %42 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %43 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %32
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %59 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = call i32 @sigorsets(i32* %55, i32* %57, i32* %60)
  %62 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %63 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SA_NODEFER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %48
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @sigaddset(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %48
  %75 = call i32 (...) @recalc_sigpending()
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_irq(i32* %79)
  br label %81

81:                                               ; preds = %74, %45
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i32 @setup_rt_frame(i64, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @setup_frame(i64, %struct.k_sigaction*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sigorsets(i32*, i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i64) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
