; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_alloc_thread_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_alloc_thread_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.task_union = type { i32 }
%struct.thread_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@THREAD_INFO_ORDER = common dso_local global i64 0, align 8
@sun4c_lowbucket_avail = common dso_local global i32 0, align 4
@NR_TASK_BUCKETS = common dso_local global i32 0, align 4
@sun4c_bucket = common dso_local global %union.task_union** null, align 8
@BUCKET_EMPTY = common dso_local global %union.task_union* null, align 8
@invalid_segment = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_info* ()* @sun4c_alloc_thread_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_info* @sun4c_alloc_thread_info() #0 {
  %1 = alloca %struct.thread_info*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i64, i64* @THREAD_INFO_ORDER, align 8
  %7 = call i64 @__get_free_pages(i32 %5, i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store %struct.thread_info* null, %struct.thread_info** %1, align 8
  br label %82

11:                                               ; preds = %0
  %12 = load i32, i32* @sun4c_lowbucket_avail, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %27, %11
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NR_TASK_BUCKETS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %union.task_union**, %union.task_union*** @sun4c_bucket, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %union.task_union*, %union.task_union** %18, i64 %20
  %22 = load %union.task_union*, %union.task_union** %21, align 8
  %23 = load %union.task_union*, %union.task_union** @BUCKET_EMPTY, align 8
  %24 = icmp eq %union.task_union* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @NR_TASK_BUCKETS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @THREAD_INFO_ORDER, align 8
  %37 = call i32 @free_pages(i64 %35, i64 %36)
  store %struct.thread_info* null, %struct.thread_info** %1, align 8
  br label %82

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @sun4c_lowbucket_avail, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @sun4c_lowbucket_avail, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @BUCKET_ADDR(i32 %46)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = inttoptr i64 %48 to %union.task_union*
  %50 = load %union.task_union**, %union.task_union*** @sun4c_bucket, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %union.task_union*, %union.task_union** %50, i64 %52
  store %union.task_union* %49, %union.task_union** %53, align 8
  %54 = load i64, i64* %2, align 8
  %55 = call i64 @sun4c_get_segmap(i64 %54)
  %56 = load i64, i64* @invalid_segment, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @get_locked_segment(i64 %59)
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @sun4c_flush_page(i64 %62)
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = add i64 %64, %65
  %67 = call i32 @sun4c_flush_page(i64 %66)
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @BUCKET_PTE(i64 %69)
  %71 = call i32 @sun4c_put_pte(i64 %68, i32 %70)
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = add i64 %75, %76
  %78 = call i32 @BUCKET_PTE(i64 %77)
  %79 = call i32 @sun4c_put_pte(i64 %74, i32 %78)
  %80 = load i64, i64* %2, align 8
  %81 = inttoptr i64 %80 to %struct.thread_info*
  store %struct.thread_info* %81, %struct.thread_info** %1, align 8
  br label %82

82:                                               ; preds = %61, %34, %10
  %83 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  ret %struct.thread_info* %83
}

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

declare dso_local i64 @BUCKET_ADDR(i32) #1

declare dso_local i64 @sun4c_get_segmap(i64) #1

declare dso_local i32 @get_locked_segment(i64) #1

declare dso_local i32 @sun4c_flush_page(i64) #1

declare dso_local i32 @sun4c_put_pte(i64, i32) #1

declare dso_local i32 @BUCKET_PTE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
