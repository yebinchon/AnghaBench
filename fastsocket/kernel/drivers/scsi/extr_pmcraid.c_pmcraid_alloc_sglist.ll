; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_alloc_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_alloc_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_sglist = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PMCRAID_MAX_IOADLS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmcraid_sglist* (i32)* @pmcraid_alloc_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmcraid_sglist* @pmcraid_alloc_sglist(i32 %0) #0 {
  %2 = alloca %struct.pmcraid_sglist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmcraid_sglist*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PMCRAID_MAX_IOADLS, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sdiv i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @get_order(i32 %20)
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 1, %26
  %28 = mul nsw i32 %25, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %12, align 4
  %31 = srem i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sdiv i32 %34, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = add i64 16, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.pmcraid_sglist* @kzalloc(i32 %48, i32 %49)
  store %struct.pmcraid_sglist* %50, %struct.pmcraid_sglist** %4, align 8
  %51 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %52 = icmp eq %struct.pmcraid_sglist* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store %struct.pmcraid_sglist* null, %struct.pmcraid_sglist** %2, align 8
  br label %126

54:                                               ; preds = %42
  %55 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %56 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %55, i32 0, i32 2
  %57 = load %struct.scatterlist*, %struct.scatterlist** %56, align 8
  store %struct.scatterlist* %57, %struct.scatterlist** %5, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @sg_init_table(%struct.scatterlist* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %63 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %66 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %121, %54
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load i32, i32* @GFP_DMA, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @__GFP_ZERO, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.page* @alloc_pages(i32 %77, i32 %78)
  store %struct.page* %79, %struct.page** %6, align 8
  %80 = load %struct.page*, %struct.page** %6, align 8
  %81 = icmp ne %struct.page* %80, null
  br i1 %81, label %102, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %96, %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i64 %91
  %93 = call i32 @sg_page(%struct.scatterlist* %92)
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @__free_pages(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %101 = call i32 @kfree(%struct.pmcraid_sglist* %100)
  store %struct.pmcraid_sglist* null, %struct.pmcraid_sglist** %2, align 8
  br label %126

102:                                              ; preds = %72
  %103 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %103, i64 %105
  %107 = load %struct.page*, %struct.page** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %10, align 4
  br label %115

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = call i32 @sg_set_page(%struct.scatterlist* %106, %struct.page* %107, i32 %116, i32 0)
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %68

124:                                              ; preds = %68
  %125 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  store %struct.pmcraid_sglist* %125, %struct.pmcraid_sglist** %2, align 8
  br label %126

126:                                              ; preds = %124, %99, %53
  %127 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %2, align 8
  ret %struct.pmcraid_sglist* %127
}

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.pmcraid_sglist* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kfree(%struct.pmcraid_sglist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
