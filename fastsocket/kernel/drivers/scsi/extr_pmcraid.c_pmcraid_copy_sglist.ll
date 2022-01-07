; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_copy_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_copy_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_sglist = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to copy user data into sg list\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_sglist*, i64, i32, i32)* @pmcraid_copy_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_copy_sglist(%struct.pmcraid_sglist* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmcraid_sglist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.pmcraid_sglist* %0, %struct.pmcraid_sglist** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %6, align 8
  %19 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = mul nsw i32 %17, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %6, align 8
  %24 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %23, i32 0, i32 1
  %25 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  store %struct.scatterlist* %25, %struct.scatterlist** %10, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %71, %4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sdiv i32 %28, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i64 %35
  %37 = call %struct.page* @sg_page(%struct.scatterlist* %36)
  store %struct.page* %37, %struct.page** %15, align 8
  %38 = load %struct.page*, %struct.page** %15, align 8
  %39 = call i8* @kmap(%struct.page* %38)
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @__copy_from_user(i8* %44, i8* %46, i32 %47)
  store i32 %48, i32* %14, align 4
  br label %55

49:                                               ; preds = %32
  %50 = load i64, i64* %7, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @__copy_to_user(i8* %51, i8* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.page*, %struct.page** %15, align 8
  %57 = call i32 @kunmap(%struct.page* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = call i32 @pmcraid_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %130

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i64 %68
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %7, align 8
  br label %26

78:                                               ; preds = %26
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %12, align 4
  %81 = srem i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %78
  %84 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i64 %86
  %88 = call %struct.page* @sg_page(%struct.scatterlist* %87)
  store %struct.page* %88, %struct.page** %16, align 8
  %89 = load %struct.page*, %struct.page** %16, align 8
  %90 = call i8* @kmap(%struct.page* %89)
  store i8* %90, i8** %11, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %83
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %7, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %12, align 4
  %100 = srem i32 %98, %99
  %101 = call i32 @__copy_from_user(i8* %95, i8* %97, i32 %100)
  store i32 %101, i32* %14, align 4
  br label %110

102:                                              ; preds = %83
  %103 = load i64, i64* %7, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %12, align 4
  %108 = srem i32 %106, %107
  %109 = call i32 @__copy_to_user(i8* %104, i8* %105, i32 %108)
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %102, %94
  %111 = load %struct.page*, %struct.page** %16, align 8
  %112 = call i32 @kunmap(%struct.page* %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  %115 = srem i32 %113, %114
  %116 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %116, i64 %118
  %120 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %110, %78
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = call i32 @pmcraid_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %60
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @__copy_from_user(i8*, i8*, i32) #1

declare dso_local i32 @__copy_to_user(i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @pmcraid_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
