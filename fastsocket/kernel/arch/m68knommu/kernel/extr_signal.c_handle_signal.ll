; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pt_regs = type { i64 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_ONESHOT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SA_NODEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_signal(i32 %0, %struct.k_sigaction* %1, i32* %2, i32* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.k_sigaction*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.k_sigaction* %1, %struct.k_sigaction** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %17 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %18 = call i32 @handle_restart(%struct.pt_regs* %16, %struct.k_sigaction* %17, i32 1)
  br label %19

19:                                               ; preds = %15, %5
  %20 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %21 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SA_SIGINFO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %33 = call i32 @setup_rt_frame(i32 %28, %struct.k_sigaction* %29, i32* %30, i32* %31, %struct.pt_regs* %32)
  br label %40

34:                                               ; preds = %19
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %39 = call i32 @setup_frame(i32 %35, %struct.k_sigaction* %36, i32* %37, %struct.pt_regs* %38)
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %42 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SA_ONESHOT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @SIG_DFL, align 4
  %50 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %51 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %64 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @sigorsets(i32* %60, i32* %62, i32* %65)
  %67 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %68 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SA_NODEFER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %53
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @sigaddset(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %53
  %80 = call i32 (...) @recalc_sigpending()
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  ret void
}

declare dso_local i32 @handle_restart(%struct.pt_regs*, %struct.k_sigaction*, i32) #1

declare dso_local i32 @setup_rt_frame(i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @setup_frame(i32, %struct.k_sigaction*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sigorsets(i32*, i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
