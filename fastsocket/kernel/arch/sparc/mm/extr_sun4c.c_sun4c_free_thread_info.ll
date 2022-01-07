; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_free_thread_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_free_thread_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@BUCKET_EMPTY = common dso_local global i32 0, align 4
@sun4c_bucket = common dso_local global i32* null, align 8
@sun4c_lowbucket_avail = common dso_local global i32 0, align 4
@THREAD_INFO_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_info*)* @sun4c_free_thread_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4c_free_thread_info(%struct.thread_info* %0) #0 {
  %2 = alloca %struct.thread_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.thread_info* %0, %struct.thread_info** %2, align 8
  %6 = load %struct.thread_info*, %struct.thread_info** %2, align 8
  %7 = ptrtoint %struct.thread_info* %6 to i64
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @sun4c_get_pte(i64 %8)
  %10 = call i64 @BUCKET_PTE_PAGE(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @BUCKET_NUM(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @sun4c_flush_page(i64 %13)
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @sun4c_flush_page(i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @sun4c_put_pte(i64 %19, i32 0)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @sun4c_put_pte(i64 %23, i32 0)
  %25 = load i32, i32* @BUCKET_EMPTY, align 4
  %26 = load i32*, i32** @sun4c_bucket, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @sun4c_lowbucket_avail, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @sun4c_lowbucket_avail, align 4
  br label %35

35:                                               ; preds = %33, %1
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @THREAD_INFO_ORDER, align 4
  %38 = call i32 @free_pages(i64 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @garbage_collect(i32 %39)
  ret void
}

declare dso_local i64 @BUCKET_PTE_PAGE(i32) #1

declare dso_local i32 @sun4c_get_pte(i64) #1

declare dso_local i32 @BUCKET_NUM(i64) #1

declare dso_local i32 @sun4c_flush_page(i64) #1

declare dso_local i32 @sun4c_put_pte(i64, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @garbage_collect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
