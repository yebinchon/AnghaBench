; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, %struct.vm_area_struct*)* }
%struct.vm_area_struct = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_buf_mmap(%struct.dma_buf* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %9 = icmp ne %struct.dma_buf* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = icmp ne %struct.vm_area_struct* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ true, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %91

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = add i64 %23, %32
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EOVERFLOW, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %91

39:                                               ; preds = %22
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = lshr i64 %47, %48
  %50 = add i64 %40, %49
  %51 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %52 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = icmp ugt i64 %50, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %91

60:                                               ; preds = %39
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @fput(i64 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %72 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @get_file(i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %84 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dma_buf*, %struct.vm_area_struct*)*, i32 (%struct.dma_buf*, %struct.vm_area_struct*)** %86, align 8
  %88 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %90 = call i32 %87(%struct.dma_buf* %88, %struct.vm_area_struct* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %70, %57, %36, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @get_file(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
