; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_state.c_set_mtrr_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_state.c_set_mtrr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_mtrr_context = type { i32, i32, i32, i32, i32 }

@CYRIX = common dso_local global i32 0, align 4
@MSR_MTRRdefType = common dso_local global i32 0, align 4
@CX86_CCR3 = common dso_local global i32 0, align 4
@cpu_has_pge = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mtrr_done(%struct.set_mtrr_context* %0) #0 {
  %2 = alloca %struct.set_mtrr_context*, align 8
  store %struct.set_mtrr_context* %0, %struct.set_mtrr_context** %2, align 8
  %3 = call i64 (...) @use_intel()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @CYRIX, align 4
  %7 = call i64 @is_cpu(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %5, %1
  %10 = call i32 (...) @wbinvd()
  %11 = call i64 (...) @use_intel()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32, i32* @MSR_MTRRdefType, align 4
  %15 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %16 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %19 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mtrr_wrmsr(i32 %14, i32 %17, i32 %20)
  br label %28

22:                                               ; preds = %9
  %23 = load i32, i32* @CX86_CCR3, align 4
  %24 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %25 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @setCx86(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  %29 = call i32 (...) @read_cr0()
  %30 = and i32 %29, -1073741825
  %31 = call i32 @write_cr0(i32 %30)
  %32 = load i64, i64* @cpu_has_pge, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %36 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @write_cr4(i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %5
  %41 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %42 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @local_irq_restore(i32 %43)
  ret void
}

declare dso_local i64 @use_intel(...) #1

declare dso_local i64 @is_cpu(i32) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @mtrr_wrmsr(i32, i32, i32) #1

declare dso_local i32 @setCx86(i32, i32) #1

declare dso_local i32 @write_cr0(i32) #1

declare dso_local i32 @read_cr0(...) #1

declare dso_local i32 @write_cr4(i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
