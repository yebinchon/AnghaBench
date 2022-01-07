; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_support.c_ia32_load_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_support.c_ia32_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }
%struct.pt_regs = type { i32, i8* }

@_TSS = common dso_local global i32 0, align 4
@_IA64_REG_AR_EFLAG = common dso_local global i32 0, align 4
@_IA64_REG_AR_FSR = common dso_local global i32 0, align 4
@_IA64_REG_AR_FCR = common dso_local global i32 0, align 4
@_IA64_REG_AR_FIR = common dso_local global i32 0, align 4
@_IA64_REG_AR_FDR = common dso_local global i32 0, align 4
@IA64_KR_IO_BASE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@IA64_KR_TSSD = common dso_local global i32 0, align 4
@IA32_IOBASE = common dso_local global i64 0, align 8
@_LDT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia32_load_state(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %10)
  store %struct.pt_regs* %11, %struct.pt_regs** %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* @_TSS, align 4
  %33 = call i8* @load_desc(i32 %32)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* @_IA64_REG_AR_EFLAG, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @ia64_setreg(i32 %35, i64 %36)
  %38 = load i32, i32* @_IA64_REG_AR_FSR, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @ia64_setreg(i32 %38, i64 %39)
  %41 = load i32, i32* @_IA64_REG_AR_FCR, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ia64_setreg(i32 %41, i64 %42)
  %44 = load i32, i32* @_IA64_REG_AR_FIR, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @ia64_setreg(i32 %44, i64 %45)
  %47 = load i32, i32* @_IA64_REG_AR_FDR, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @ia64_setreg(i32 %47, i64 %48)
  %50 = load i32, i32* @IA64_KR_IO_BASE, align 4
  %51 = call i8* @ia64_get_kr(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* @IA64_KR_TSSD, align 4
  %56 = call i8* @ia64_get_kr(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* @IA64_KR_IO_BASE, align 4
  %61 = load i64, i64* @IA32_IOBASE, align 8
  %62 = call i32 @ia64_set_kr(i32 %60, i64 %61)
  %63 = load i32, i32* @IA64_KR_TSSD, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ia64_set_kr(i32 %63, i64 %64)
  %66 = load i32, i32* @_TSS, align 4
  %67 = shl i32 %66, 48
  %68 = load i32, i32* @_LDT, align 4
  %69 = shl i32 %68, 32
  %70 = or i32 %67, %69
  %71 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %70, %73
  %75 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @_LDT, align 4
  %78 = call i8* @load_desc(i32 %77)
  %79 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 0
  %83 = call i32 (...) @smp_processor_id()
  %84 = call i32 @load_TLS(%struct.TYPE_5__* %82, i32 %83)
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i8* @load_desc(i32) #1

declare dso_local i32 @ia64_setreg(i32, i64) #1

declare dso_local i8* @ia64_get_kr(i32) #1

declare dso_local i32 @ia64_set_kr(i32, i64) #1

declare dso_local i32 @load_TLS(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
