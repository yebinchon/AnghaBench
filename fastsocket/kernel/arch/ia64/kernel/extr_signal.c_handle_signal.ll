; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_signal.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_signal.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sigscratch = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@SA_NODEFER = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.k_sigaction*, i32*, i32*, %struct.sigscratch*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_signal(i64 %0, %struct.k_sigaction* %1, i32* %2, i32* %3, %struct.sigscratch* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.k_sigaction*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sigscratch*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.k_sigaction* %1, %struct.k_sigaction** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.sigscratch* %4, %struct.sigscratch** %11, align 8
  %12 = load %struct.sigscratch*, %struct.sigscratch** %11, align 8
  %13 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %12, i32 0, i32 0
  %14 = call i64 @IS_IA32_PROCESS(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load %struct.sigscratch*, %struct.sigscratch** %11, align 8
  %22 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %21, i32 0, i32 0
  %23 = call i32 @ia32_setup_frame1(i64 %17, %struct.k_sigaction* %18, i32* %19, i32* %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %78

26:                                               ; preds = %16
  br label %37

27:                                               ; preds = %5
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.sigscratch*, %struct.sigscratch** %11, align 8
  %33 = call i32 @setup_frame(i64 %28, %struct.k_sigaction* %29, i32* %30, i32* %31, %struct.sigscratch* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %78

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_irq(i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %48 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i32 @sigorsets(i32* %44, i32* %46, i32* %49)
  %51 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %52 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SA_NODEFER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %37
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @sigaddset(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %37
  %64 = call i32 (...) @recalc_sigpending()
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i64, i64* %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %73 = load %struct.sigscratch*, %struct.sigscratch** %11, align 8
  %74 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %73, i32 0, i32 0
  %75 = load i32, i32* @TIF_SINGLESTEP, align 4
  %76 = call i32 @test_thread_flag(i32 %75)
  %77 = call i32 @tracehook_signal_handler(i64 %70, i32* %71, %struct.k_sigaction* %72, i32* %74, i32 %76)
  store i64 1, i64* %6, align 8
  br label %78

78:                                               ; preds = %63, %35, %25
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @IS_IA32_PROCESS(i32*) #1

declare dso_local i32 @ia32_setup_frame1(i64, %struct.k_sigaction*, i32*, i32*, i32*) #1

declare dso_local i32 @setup_frame(i64, %struct.k_sigaction*, i32*, i32*, %struct.sigscratch*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sigorsets(i32*, i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i64) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tracehook_signal_handler(i64, i32*, %struct.k_sigaction*, i32*, i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
