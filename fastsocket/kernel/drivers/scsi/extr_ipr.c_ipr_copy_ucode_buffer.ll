; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_copy_ucode_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_copy_ucode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_sglist = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ipr_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_sglist*, i32*, i32)* @ipr_copy_ucode_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_copy_ucode_buffer(%struct.ipr_sglist* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipr_sglist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  store %struct.ipr_sglist* %0, %struct.ipr_sglist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %17 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %22 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %21, i32 0, i32 2
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %11, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %56, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i64 %33
  %35 = call %struct.page* @sg_page(%struct.scatterlist* %34)
  store %struct.page* %35, %struct.page** %13, align 8
  %36 = load %struct.page*, %struct.page** %13, align 8
  %37 = call i8* @kmap(%struct.page* %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memcpy(i8* %38, i32* %39, i32 %40)
  %42 = load %struct.page*, %struct.page** %13, align 8
  %43 = call i32 @kunmap(%struct.page* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i64 %47
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = load i32, i32* @ipr_trace, align 4
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %97

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %6, align 8
  br label %24

63:                                               ; preds = %24
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = srem i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %63
  %69 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i64 %71
  %73 = call %struct.page* @sg_page(%struct.scatterlist* %72)
  store %struct.page* %73, %struct.page** %14, align 8
  %74 = load %struct.page*, %struct.page** %14, align 8
  %75 = call i8* @kmap(%struct.page* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = srem i32 %78, %79
  %81 = call i32 @memcpy(i8* %76, i32* %77, i32 %80)
  %82 = load %struct.page*, %struct.page** %14, align 8
  %83 = call i32 @kunmap(%struct.page* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = srem i32 %84, %85
  %87 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i64 %89
  %91 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %68, %63
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %95 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %52
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
