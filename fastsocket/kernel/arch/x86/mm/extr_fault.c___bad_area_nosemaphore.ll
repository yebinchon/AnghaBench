; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c___bad_area_nosemaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c___bad_area_nosemaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@PF_USER = common dso_local global i64 0, align 8
@show_unhandled_signals = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64, i32)* @__bad_area_nosemaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bad_area_nosemaphore(%struct.pt_regs* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PF_USER, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %4
  %16 = call i32 (...) @local_irq_enable()
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @is_prefetch(%struct.pt_regs* %17, i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %73

23:                                               ; preds = %15
  %24 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @is_errata100(%struct.pt_regs* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %73

29:                                               ; preds = %23
  %30 = load i32, i32* @show_unhandled_signals, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %38 = call i32 @show_signal_msg(%struct.pt_regs* %34, i64 %35, i64 %36, %struct.task_struct* %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @TASK_SIZE, align 8
  %47 = icmp uge i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = or i64 %44, %49
  %51 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 14, i32* %56, align 8
  %57 = load i32, i32* @SIGSEGV, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %61 = call i32 @force_sig_info_fault(i32 %57, i32 %58, i64 %59, %struct.task_struct* %60, i32 0)
  br label %73

62:                                               ; preds = %4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @is_f00f_bug(%struct.pt_regs* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  %69 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @no_context(%struct.pt_regs* %69, i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %67, %39, %28, %22
  ret void
}

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @is_prefetch(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @is_errata100(%struct.pt_regs*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @show_signal_msg(%struct.pt_regs*, i64, i64, %struct.task_struct*) #1

declare dso_local i32 @force_sig_info_fault(i32, i32, i64, %struct.task_struct*, i32) #1

declare dso_local i64 @is_f00f_bug(%struct.pt_regs*, i64) #1

declare dso_local i32 @no_context(%struct.pt_regs*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
