; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_start_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64* }
%struct.TYPE_2__ = type { i32 }

@ST0_CU0 = common dso_local global i64 0, align 8
@ST0_CU1 = common dso_local global i64 0, align 8
@ST0_FR = common dso_local global i64 0, align 8
@KU_MASK = common dso_local global i64 0, align 8
@KU_USER = common dso_local global i64 0, align 8
@cpu_has_dsp = common dso_local global i64 0, align 8
@USER_DS = common dso_local global i32 0, align 4
@TIF_32BIT_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_thread(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ST0_CU0, align 8
  %12 = load i64, i64* @ST0_CU1, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @ST0_FR, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @KU_MASK, align 8
  %17 = or i64 %15, %16
  %18 = xor i64 %17, -1
  %19 = and i64 %10, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @KU_USER, align 8
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = call i32 (...) @clear_used_math()
  %27 = call i32 (...) @clear_fpu_owner()
  %28 = load i64, i64* @cpu_has_dsp, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call i32 (...) @__init_dsp()
  br label %32

32:                                               ; preds = %30, %3
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 29
  store i64 %36, i64* %40, align 8
  %41 = load i32, i32* @USER_DS, align 4
  %42 = call %struct.TYPE_2__* (...) @current_thread_info()
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @clear_used_math(...) #1

declare dso_local i32 @clear_fpu_owner(...) #1

declare dso_local i32 @__init_dsp(...) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
