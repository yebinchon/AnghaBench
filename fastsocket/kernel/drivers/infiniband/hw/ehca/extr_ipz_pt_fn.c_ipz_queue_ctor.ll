; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_queue_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_queue_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_pd = type { i32 }
%struct.ipz_queue = type { i32, i32, i32, i32, i32, i64, i32*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"FATAL ERROR: pagesize=%x is greater than kernel page size\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't allocate queue page list\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Couldn't alloc pages queue=%p nr_of_pages=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipz_queue_ctor(%struct.ehca_pd* %0, %struct.ipz_queue* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehca_pd*, align 8
  %10 = alloca %struct.ipz_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ehca_pd* %0, %struct.ehca_pd** %9, align 8
  store %struct.ipz_queue* %1, %struct.ipz_queue** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load i32, i32* %12, align 4
  %21 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %8, align 4
  br label %108

22:                                               ; preds = %7
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %27 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %30 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %33 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %36 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %38 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %40 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %39, i32 0, i32 4
  store i32 1, i32* %40, align 8
  %41 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %42 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %41, i32 0, i32 6
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i64 @kzalloc(i32 %46, i32 %47)
  %49 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %50 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %52 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %22
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @vzalloc(i32 %59)
  %61 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %62 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %64 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %108

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %22
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %75 = load %struct.ehca_pd*, %struct.ehca_pd** %9, align 8
  %76 = call i32 @alloc_small_queue_page(%struct.ipz_queue* %74, %struct.ehca_pd* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %88

79:                                               ; preds = %73
  br label %87

80:                                               ; preds = %70
  %81 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @alloc_queue_pages(%struct.ipz_queue* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %88

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %79
  store i32 1, i32* %8, align 4
  br label %108

88:                                               ; preds = %85, %78
  %89 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i8*, ...) @ehca_gen_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.ipz_queue* %89, i32 %90)
  %92 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %93 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @is_vmalloc_addr(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %99 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @vfree(i64 %100)
  br label %107

102:                                              ; preds = %88
  %103 = load %struct.ipz_queue*, %struct.ipz_queue** %10, align 8
  %104 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @kfree(i64 %105)
  br label %107

107:                                              ; preds = %102, %97
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %87, %67, %19
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @ehca_gen_err(i8*, ...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i64 @vzalloc(i32) #1

declare dso_local i32 @alloc_small_queue_page(%struct.ipz_queue*, %struct.ehca_pd*) #1

declare dso_local i32 @alloc_queue_pages(%struct.ipz_queue*, i32) #1

declare dso_local i64 @is_vmalloc_addr(i64) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
