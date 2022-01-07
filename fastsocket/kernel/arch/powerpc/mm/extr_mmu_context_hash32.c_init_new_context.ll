; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmu_context_hash32.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmu_context_hash32.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@next_mmu_context = common dso_local global i64 0, align 8
@context_map = common dso_local global i32 0, align 4
@LAST_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %6 = load i64, i64* @next_mmu_context, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @context_map, align 4
  %10 = call i64 @test_and_set_bit(i64 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* @context_map, align 4
  %14 = load i32, i32* @LAST_CONTEXT, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @find_next_zero_bit(i32 %13, i32 %15, i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @LAST_CONTEXT, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %12
  br label %7

24:                                               ; preds = %7
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  %27 = load i32, i32* @LAST_CONTEXT, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %26, %28
  store i64 %29, i64* @next_mmu_context, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  ret i32 0
}

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i64 @find_next_zero_bit(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
