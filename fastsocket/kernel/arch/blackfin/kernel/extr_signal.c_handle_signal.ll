; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_signal.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_signal.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pt_regs = type { i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@SA_NODEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.k_sigaction*, i32*, %struct.pt_regs*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_signal(i32 %0, i32* %1, %struct.k_sigaction* %2, i32* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.k_sigaction*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.k_sigaction* %2, %struct.k_sigaction** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %18 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %19 = call i32 @handle_restart(%struct.pt_regs* %17, %struct.k_sigaction* %18, i32 1)
  br label %20

20:                                               ; preds = %16, %5
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %26 = call i32 @setup_rt_frame(i32 %21, %struct.k_sigaction* %22, i32* %23, i32* %24, %struct.pt_regs* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %40 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @sigorsets(i32* %36, i32* %38, i32* %41)
  %43 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %44 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SA_NODEFER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %29
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sigaddset(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %29
  %56 = call i32 (...) @recalc_sigpending()
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  br label %62

62:                                               ; preds = %55, %20
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @handle_restart(%struct.pt_regs*, %struct.k_sigaction*, i32) #1

declare dso_local i32 @setup_rt_frame(i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*) #1

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
