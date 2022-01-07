; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-contig.c_videobuf_dma_contig_user_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-contig.c_videobuf_dma_contig_user_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.videobuf_dma_contig_memory = type { i64, i32, i64 }
%struct.videobuf_buffer = type { i64, i32 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_dma_contig_memory*, %struct.videobuf_buffer*)* @videobuf_dma_contig_user_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dma_contig_user_get(%struct.videobuf_dma_contig_memory* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_dma_contig_memory*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.videobuf_dma_contig_memory* %0, %struct.videobuf_dma_contig_memory** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %5, align 8
  %15 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @PAGE_ALIGN(i32 %17)
  %19 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %20 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %22 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %21, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  %27 = call i32 @down_read(i32* %26)
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %28, i64 %31)
  store %struct.vm_area_struct* %32, %struct.vm_area_struct** %6, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = icmp ne %struct.vm_area_struct* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %104

36:                                               ; preds = %2
  %37 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %41 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %104

49:                                               ; preds = %36
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %90, %49
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %56 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = ashr i64 %57, %58
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %53
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @follow_pfn(%struct.vm_area_struct* %62, i64 %63, i64* %8)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %97

68:                                               ; preds = %61
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = shl i64 %72, %73
  %75 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %76 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %86

77:                                               ; preds = %68
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %97

90:                                               ; preds = %86
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %53

97:                                               ; preds = %89, %67, %53
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %102 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %48, %35
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load %struct.mm_struct*, %struct.mm_struct** %106, align 8
  %108 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %107, i32 0, i32 0
  %109 = call i32 @up_read(i32* %108)
  %110 = load i32, i32* %11, align 4
  ret i32 %110
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @follow_pfn(%struct.vm_area_struct*, i64, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
