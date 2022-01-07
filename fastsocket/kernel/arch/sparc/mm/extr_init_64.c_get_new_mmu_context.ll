; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_get_new_mmu_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_get_new_mmu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ctx_alloc_lock = common dso_local global i32 0, align 4
@CTX_PGSZ_MASK = common dso_local global i64 0, align 8
@tlb_context_cache = common dso_local global i32 0, align 4
@CTX_NR_MASK = common dso_local global i32 0, align 4
@mmu_context_bmap = common dso_local global i64* null, align 8
@CTX_NR_BITS = common dso_local global i32 0, align 4
@CTX_VERSION_MASK = common dso_local global i32 0, align 4
@CTX_FIRST_VERSION = common dso_local global i32 0, align 4
@CTX_BMAP_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_new_mmu_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @ctx_alloc_lock, i64 %9)
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CTX_PGSZ_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* @tlb_context_cache, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @CTX_NR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i64*, i64** @mmu_context_bmap, align 8
  %23 = load i32, i32* @CTX_NR_BITS, align 4
  %24 = shl i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @find_next_zero_bit(i64* %22, i64 %25, i32 %27)
  store i64 %28, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @CTX_NR_BITS, align 4
  %31 = shl i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %1
  %35 = load i64*, i64** @mmu_context_bmap, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @find_next_zero_bit(i64* %35, i64 %36, i32 1)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %34
  %42 = load i32, i32* @tlb_context_cache, align 4
  %43 = load i32, i32* @CTX_VERSION_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CTX_FIRST_VERSION, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @CTX_FIRST_VERSION, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i64*, i64** @mmu_context_bmap, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 3, i64* %55, align 8
  %56 = load i64*, i64** @mmu_context_bmap, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 0, i64* %57, align 8
  %58 = load i64*, i64** @mmu_context_bmap, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  store i64 0, i64* %59, align 8
  %60 = load i64*, i64** @mmu_context_bmap, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 3
  store i64 0, i64* %61, align 8
  store i32 4, i32* %8, align 4
  br label %62

62:                                               ; preds = %87, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @CTX_BMAP_SLOTS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load i64*, i64** @mmu_context_bmap, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 0
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 0, i64* %71, align 8
  %72 = load i64*, i64** @mmu_context_bmap, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i64*, i64** @mmu_context_bmap, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i64*, i64** @mmu_context_bmap, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %66
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %8, align 4
  br label %62

90:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %108

91:                                               ; preds = %34
  br label %92

92:                                               ; preds = %91, %1
  %93 = load i64, i64* %4, align 8
  %94 = and i64 %93, 63
  %95 = shl i64 1, %94
  %96 = load i64*, i64** @mmu_context_bmap, align 8
  %97 = load i64, i64* %4, align 8
  %98 = lshr i64 %97, 6
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %95
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* @tlb_context_cache, align 4
  %103 = load i32, i32* @CTX_VERSION_MASK, align 4
  %104 = and i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %4, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %92, %90
  %109 = load i64, i64* %4, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* @tlb_context_cache, align 4
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = or i64 %111, %112
  %114 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %115 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* @ctx_alloc_lock, i64 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %108
  %123 = call i32 (...) @smp_new_mmu_context_version()
  br label %124

124:                                              ; preds = %122, %108
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_next_zero_bit(i64*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_new_mmu_context_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
