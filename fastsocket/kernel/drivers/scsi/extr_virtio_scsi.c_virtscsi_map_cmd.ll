; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_map_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_map_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi_target_state = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.virtio_scsi_cmd = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi_target_state*, %struct.virtio_scsi_cmd*, i32*, i32*, i64, i64)* @virtscsi_map_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_map_cmd(%struct.virtio_scsi_target_state* %0, %struct.virtio_scsi_cmd* %1, i32* %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.virtio_scsi_target_state*, align 8
  %8 = alloca %struct.virtio_scsi_cmd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scsi_cmnd*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  store %struct.virtio_scsi_target_state* %0, %struct.virtio_scsi_target_state** %7, align 8
  store %struct.virtio_scsi_cmd* %1, %struct.virtio_scsi_cmd** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %17 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %16, i32 0, i32 2
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %13, align 8
  %19 = load %struct.virtio_scsi_target_state*, %struct.virtio_scsi_target_state** %7, align 8
  %20 = getelementptr inbounds %struct.virtio_scsi_target_state, %struct.virtio_scsi_target_state* %19, i32 0, i32 0
  %21 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  store %struct.scatterlist* %21, %struct.scatterlist** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %23 = load i32, i32* %15, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %15, align 4
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %22, i64 %25
  %27 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %27, i32 0, i32 1
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @sg_set_buf(%struct.scatterlist* %26, i32* %28, i64 %29)
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %32 = icmp ne %struct.scsi_cmnd* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %6
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %42 = call i32 @scsi_out(%struct.scsi_cmnd* %41)
  %43 = call i32 @virtscsi_map_sgl(%struct.scatterlist* %40, i32* %15, i32 %42)
  br label %44

44:                                               ; preds = %39, %33, %6
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i64 %50
  %52 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @sg_set_buf(%struct.scatterlist* %51, i32* %53, i64 %54)
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %57 = icmp ne %struct.scsi_cmnd* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %44
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMA_TO_DEVICE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %67 = call i32 @scsi_in(%struct.scsi_cmnd* %66)
  %68 = call i32 @virtscsi_map_sgl(%struct.scatterlist* %65, i32* %15, i32 %67)
  br label %69

69:                                               ; preds = %64, %58, %44
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sub i32 %70, %72
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  ret void
}

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @virtscsi_map_sgl(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @scsi_out(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_in(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
