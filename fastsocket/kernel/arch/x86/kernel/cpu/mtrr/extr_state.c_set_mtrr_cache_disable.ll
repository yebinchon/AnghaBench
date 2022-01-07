; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_state.c_set_mtrr_cache_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_state.c_set_mtrr_cache_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_mtrr_context = type { i32, i32, i32 }

@MSR_MTRRdefType = common dso_local global i32 0, align 4
@CYRIX = common dso_local global i32 0, align 4
@CX86_CCR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mtrr_cache_disable(%struct.set_mtrr_context* %0) #0 {
  %2 = alloca %struct.set_mtrr_context*, align 8
  store %struct.set_mtrr_context* %0, %struct.set_mtrr_context** %2, align 8
  %3 = call i64 (...) @use_intel()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i32, i32* @MSR_MTRRdefType, align 4
  %7 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %8 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = and i64 %10, 62208
  %12 = trunc i64 %11 to i32
  %13 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %14 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mtrr_wrmsr(i32 %6, i32 %12, i32 %15)
  br label %30

17:                                               ; preds = %1
  %18 = load i32, i32* @CYRIX, align 4
  %19 = call i64 @is_cpu(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @CX86_CCR3, align 4
  %23 = load %struct.set_mtrr_context*, %struct.set_mtrr_context** %2, align 8
  %24 = getelementptr inbounds %struct.set_mtrr_context, %struct.set_mtrr_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = or i32 %26, 16
  %28 = call i32 @setCx86(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %17
  br label %30

30:                                               ; preds = %29, %5
  ret void
}

declare dso_local i64 @use_intel(...) #1

declare dso_local i32 @mtrr_wrmsr(i32, i32, i32) #1

declare dso_local i64 @is_cpu(i32) #1

declare dso_local i32 @setCx86(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
