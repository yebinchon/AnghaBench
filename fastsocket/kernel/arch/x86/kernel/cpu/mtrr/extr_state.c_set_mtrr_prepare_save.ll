; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_state.c_set_mtrr_prepare_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_state.c_set_mtrr_prepare_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_mtrr_context = type { i32, i32, i32, i32, i32 }

@CYRIX = common dso_local global i32 0, align 4
@cpu_has_pge = common dso_local global i64 0, align 8
@X86_CR4_PGE = common dso_local global i32 0, align 4
@X86_CR0_CD = common dso_local global i32 0, align 4
@MSR_MTRRdefType = common dso_local global i32 0, align 4
@CX86_CCR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mtrr_prepare_save(%struct.set_mtrr_context* %0) #0 {
  %2 = alloca %struct.set_mtrr_context*, align 8
  %3 = alloca i32, align 4
  store %struct.set_mtrr_context* %0, %struct.set_mtrr_context** %2, align 8
  %4 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %5 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @local_irq_save(i32 %6)
  %8 = call i64 (...) @use_intel()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @CYRIX, align 4
  %12 = call i64 @is_cpu(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @cpu_has_pge, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = call i32 (...) @read_cr4()
  %19 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %20 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %22 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @X86_CR4_PGE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @write_cr4(i32 %26)
  br label %28

28:                                               ; preds = %17, %14
  %29 = call i32 (...) @read_cr0()
  %30 = load i32, i32* @X86_CR0_CD, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = call i32 (...) @wbinvd()
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @write_cr0(i32 %33)
  %35 = call i32 (...) @wbinvd()
  %36 = call i64 (...) @use_intel()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i32, i32* @MSR_MTRRdefType, align 4
  %40 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %41 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %44 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rdmsr(i32 %39, i32 %42, i32 %45)
  br label %52

47:                                               ; preds = %28
  %48 = load i32, i32* @CX86_CCR3, align 4
  %49 = call i32 @getCx86(i32 %48)
  %50 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %51 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %38
  br label %53

53:                                               ; preds = %52, %10
  ret void
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i64 @use_intel(...) #1

declare dso_local i64 @is_cpu(i32) #1

declare dso_local i32 @read_cr4(...) #1

declare dso_local i32 @write_cr4(i32) #1

declare dso_local i32 @read_cr0(...) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @write_cr0(i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @getCx86(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
