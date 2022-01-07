; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_alloc_ucode_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_alloc_ucode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_sglist = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@IPR_MAX_SGLIST = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipr_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipr_sglist* (i32)* @ipr_alloc_ucode_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipr_sglist* @ipr_alloc_ucode_buffer(i32 %0) #0 {
  %2 = alloca %struct.ipr_sglist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipr_sglist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IPR_MAX_SGLIST, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sdiv i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @get_order(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = mul nsw i32 %19, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %28, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = add i64 16, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ipr_sglist* @kzalloc(i32 %42, i32 %43)
  store %struct.ipr_sglist* %44, %struct.ipr_sglist** %10, align 8
  %45 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  %46 = icmp eq %struct.ipr_sglist* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @ipr_trace, align 4
  store %struct.ipr_sglist* null, %struct.ipr_sglist** %2, align 8
  br label %105

49:                                               ; preds = %36
  %50 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  %51 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %50, i32 0, i32 2
  %52 = load %struct.scatterlist*, %struct.scatterlist** %51, align 8
  store %struct.scatterlist* %52, %struct.scatterlist** %11, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @sg_init_table(%struct.scatterlist* %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  %58 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  %61 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %100, %49
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call %struct.page* @alloc_pages(i32 %67, i32 %68)
  store %struct.page* %69, %struct.page** %12, align 8
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = icmp ne %struct.page* %70, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ipr_trace, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %87, %72
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %80, i64 %82
  %84 = call i32 @sg_page(%struct.scatterlist* %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @__free_pages(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %76

90:                                               ; preds = %76
  %91 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  %92 = call i32 @kfree(%struct.ipr_sglist* %91)
  store %struct.ipr_sglist* null, %struct.ipr_sglist** %2, align 8
  br label %105

93:                                               ; preds = %66
  %94 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %94, i64 %96
  %98 = load %struct.page*, %struct.page** %12, align 8
  %99 = call i32 @sg_set_page(%struct.scatterlist* %97, %struct.page* %98, i32 0, i32 0)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  store %struct.ipr_sglist* %104, %struct.ipr_sglist** %2, align 8
  br label %105

105:                                              ; preds = %103, %90, %47
  %106 = load %struct.ipr_sglist*, %struct.ipr_sglist** %2, align 8
  ret %struct.ipr_sglist* %106
}

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.ipr_sglist* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kfree(%struct.ipr_sglist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
