; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_queue_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_queue_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pd = type { i32 }
%struct.ipz_queue = type { i32, i32, i64*, i64 }

@.str = private unnamed_addr constant [29 x i8] c"queue or queue_pages is NULL\00", align 1
@PAGES_PER_KPAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipz_queue_dtor(%struct.ehca_pd* %0, %struct.ipz_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehca_pd*, align 8
  %5 = alloca %struct.ipz_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ehca_pd* %0, %struct.ehca_pd** %4, align 8
  store %struct.ipz_queue* %1, %struct.ipz_queue** %5, align 8
  %8 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %9 = icmp ne %struct.ipz_queue* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %12 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = call i32 @ehca_gen_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %71

17:                                               ; preds = %10
  %18 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %19 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %24 = load %struct.ehca_pd*, %struct.ehca_pd** %4, align 8
  %25 = call i32 @free_small_queue_page(%struct.ipz_queue* %23, %struct.ehca_pd* %24)
  br label %54

26:                                               ; preds = %17
  %27 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %31 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %47, %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %40 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @free_page(i64 %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* @PAGES_PER_KPAGE, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %56 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = call i64 @is_vmalloc_addr(i64* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %62 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @vfree(i64* %63)
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.ipz_queue*, %struct.ipz_queue** %5, align 8
  %67 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = call i32 @kfree(i64* %68)
  br label %70

70:                                               ; preds = %65, %60
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ehca_gen_dbg(i8*) #1

declare dso_local i32 @free_small_queue_page(%struct.ipz_queue*, %struct.ehca_pd*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64 @is_vmalloc_addr(i64*) #1

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
