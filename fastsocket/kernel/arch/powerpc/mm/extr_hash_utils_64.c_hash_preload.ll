; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_utils_64.c_hash_preload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_utils_64.c_hash_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@USER_REGION_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"hash_preload(mm=%p, mm->pgdir=%p, ea=%016lx, access=%lx, trap=%lx\0A\00", align 1
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@_PAGE_4K_PFN = common dso_local global i32 0, align 4
@_PAGE_NO_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_preload(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @REGION_ID(i64 %16)
  %18 = load i64, i64* @USER_REGION_ID, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @DBG_LOW(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.mm_struct* %22, i8* %25, i64 %26, i64 %27, i64 %28)
  %30 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %93

36:                                               ; preds = %4
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32* @find_linux_pte(i8* %37, i64 %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %93

43:                                               ; preds = %36
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @user_segment_size(i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i64 @get_vsid(i32 %49, i64 %50, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @local_irq_save(i64 %53)
  %55 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %56 = call i32 @mm_cpumask(%struct.mm_struct* %55)
  %57 = call i32 (...) @smp_processor_id()
  %58 = call i32 @cpumask_of(i32 %57)
  %59 = call i64 @cpumask_equal(i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @subpage_protection(i8* %70, i64 %71)
  %73 = call i32 @__hash_page_4K(i64 %63, i64 %64, i64 %65, i32* %66, i64 %67, i32 %68, i32 %69, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %90

76:                                               ; preds = %62
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %83 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pte_val(i32 %87)
  %89 = call i32 @hash_failure_debug(i64 %77, i64 %78, i64 %79, i64 %80, i32 %81, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %76, %62
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @local_irq_restore(i64 %91)
  br label %93

93:                                               ; preds = %90, %42, %35
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @REGION_ID(i64) #1

declare dso_local i32 @DBG_LOW(i8*, %struct.mm_struct*, i8*, i64, i64, i64) #1

declare dso_local i32* @find_linux_pte(i8*, i64) #1

declare dso_local i32 @user_segment_size(i64) #1

declare dso_local i64 @get_vsid(i32, i64, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @cpumask_equal(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__hash_page_4K(i64, i64, i64, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @subpage_protection(i8*, i64) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
