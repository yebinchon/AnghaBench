; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_alloc_queue_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_alloc_queue_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_queue = type { %struct.ipz_page** }
%struct.ipz_page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGES_PER_KPAGE = common dso_local global i32 0, align 4
@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipz_queue*, i32)* @alloc_queue_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_queue_pages(%struct.ipz_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipz_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ipz_queue* %0, %struct.ipz_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %9
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %51

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PAGES_PER_KPAGE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to %struct.ipz_page*
  %34 = load %struct.ipz_queue*, %struct.ipz_queue** %4, align 8
  %35 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %34, i32 0, i32 0
  %36 = load %struct.ipz_page**, %struct.ipz_page*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ipz_page*, %struct.ipz_page** %36, i64 %38
  store %struct.ipz_page* %33, %struct.ipz_page** %39, align 8
  %40 = load i32, i32* @EHCA_PAGESIZE, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %21

49:                                               ; preds = %29
  br label %9

50:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %82

51:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.ipz_queue*, %struct.ipz_queue** %4, align 8
  %58 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %57, i32 0, i32 0
  %59 = load %struct.ipz_page**, %struct.ipz_page*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ipz_page*, %struct.ipz_page** %59, i64 %61
  %63 = load %struct.ipz_page*, %struct.ipz_page** %62, align 8
  %64 = icmp ne %struct.ipz_page* %63, null
  br label %65

65:                                               ; preds = %56, %52
  %66 = phi i1 [ false, %52 ], [ %64, %56 ]
  br i1 %66, label %67, label %81

67:                                               ; preds = %65
  %68 = load %struct.ipz_queue*, %struct.ipz_queue** %4, align 8
  %69 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %68, i32 0, i32 0
  %70 = load %struct.ipz_page**, %struct.ipz_page*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ipz_page*, %struct.ipz_page** %70, i64 %72
  %74 = load %struct.ipz_page*, %struct.ipz_page** %73, align 8
  %75 = ptrtoint %struct.ipz_page* %74 to i64
  %76 = call i32 @free_page(i64 %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @PAGES_PER_KPAGE, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %52

81:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
