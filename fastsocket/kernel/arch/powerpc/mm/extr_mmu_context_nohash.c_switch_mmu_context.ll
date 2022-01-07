; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmu_context_nohash.c_switch_mmu_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmu_context_nohash.c_switch_mmu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@context_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[%d] activating context for mm @%p, active=%d, id=%d\00", align 1
@MMU_NO_CONTEXT = common dso_local global i32 0, align 4
@next_context = common dso_local global i32 0, align 4
@last_context = common dso_local global i32 0, align 4
@first_context = common dso_local global i32 0, align 4
@context_map = common dso_local global i64* null, align 8
@nr_free_contexts = common dso_local global i32 0, align 4
@context_mm = common dso_local global %struct.mm_struct** null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c" | new id=%d,nrf=%d\00", align 1
@stale_map = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c" | stale flush %d [%d..%d]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_mmu_context(%struct.mm_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %7, align 4
  %10 = call i32 @spin_lock(i32* @context_lock)
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_hard(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.mm_struct* %12, i32 %16, i32 %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MMU_NO_CONTEXT, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %84

33:                                               ; preds = %2
  %34 = load i32, i32* @next_context, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @last_context, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @first_context, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i64*, i64** @context_map, align 8
  store i64* %41, i64** %8, align 8
  %42 = load i32, i32* @nr_free_contexts, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @steal_context_up(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %68

47:                                               ; preds = %40
  %48 = load i32, i32* @nr_free_contexts, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @nr_free_contexts, align 4
  br label %50

50:                                               ; preds = %66, %47
  %51 = load i32, i32* %6, align 4
  %52 = load i64*, i64** %8, align 8
  %53 = call i64 @__test_and_set_bit(i32 %51, i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* @last_context, align 4
  %58 = add i32 %57, 1
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @find_next_zero_bit(i64* %56, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @last_context, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @first_context, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %55
  br label %50

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* @next_context, align 4
  %71 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %72 = load %struct.mm_struct**, %struct.mm_struct*** @context_mm, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %72, i64 %74
  store %struct.mm_struct* %71, %struct.mm_struct** %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %78 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @nr_free_contexts, align 4
  %82 = call i32 (i8*, ...) @pr_hardcont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = call i32 (...) @context_check_map()
  br label %84

84:                                               ; preds = %68, %32
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** @stale_map, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @test_bit(i32 %85, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @cpu_first_thread_in_core(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @cpu_last_thread_in_core(i32 %97)
  %99 = call i32 (i8*, ...) @pr_hardcont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %96, i32 %98)
  %100 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %101 = call i32 @local_flush_tlb_mm(%struct.mm_struct* %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cpu_first_thread_in_core(i32 %102)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %117, %93
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @cpu_last_thread_in_core(i32 %106)
  %108 = icmp ule i32 %105, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** @stale_map, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__clear_bit(i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %5, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %104

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i8*, ...) @pr_hardcont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %126 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @set_context(i32 %124, i32 %127)
  %129 = call i32 @spin_unlock(i32* @context_lock)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_hard(i8*, i32, %struct.mm_struct*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @steal_context_up(i32) #1

declare dso_local i64 @__test_and_set_bit(i32, i64*) #1

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i32 @pr_hardcont(i8*, ...) #1

declare dso_local i32 @context_check_map(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpu_first_thread_in_core(i32) #1

declare dso_local i32 @cpu_last_thread_in_core(i32) #1

declare dso_local i32 @local_flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @set_context(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
