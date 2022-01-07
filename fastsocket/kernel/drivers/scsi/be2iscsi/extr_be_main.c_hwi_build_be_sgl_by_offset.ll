; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_build_be_sgl_by_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_build_be_sgl_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.mem_array = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_dma_mem = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, %struct.mem_array*, %struct.be_dma_mem*)* @hwi_build_be_sgl_by_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_build_be_sgl_by_offset(%struct.beiscsi_hba* %0, %struct.mem_array* %1, %struct.be_dma_mem* %2) #0 {
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.mem_array*, align 8
  %6 = alloca %struct.be_dma_mem*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.mem_array* %1, %struct.mem_array** %5, align 8
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %6, align 8
  %7 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %8 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %13 = call i32 @be_sgl_destroy_contiguous(%struct.be_dma_mem* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %16 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %20 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %26 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %29 = call i32 @be_sgl_create_contiguous(i8* %18, i32 %24, i32 %27, %struct.be_dma_mem* %28)
  ret void
}

declare dso_local i32 @be_sgl_destroy_contiguous(%struct.be_dma_mem*) #1

declare dso_local i32 @be_sgl_create_contiguous(i8*, i32, i32, %struct.be_dma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
