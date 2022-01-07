; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_map_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_map_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32 }
%struct.pvscsi_ctx = type { i8*, i8*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.PVSCSIRingReqDesc = type { i32, i8*, i32 }

@PVSCSI_FLAG_CMD_WITH_SG_LIST = common dso_local global i32 0, align 4
@SGL_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*, %struct.pvscsi_ctx*, %struct.scsi_cmnd*, %struct.PVSCSIRingReqDesc*)* @pvscsi_map_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_map_buffers(%struct.pvscsi_adapter* %0, %struct.pvscsi_ctx* %1, %struct.scsi_cmnd* %2, %struct.PVSCSIRingReqDesc* %3) #0 {
  %5 = alloca %struct.pvscsi_adapter*, align 8
  %6 = alloca %struct.pvscsi_ctx*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.PVSCSIRingReqDesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %5, align 8
  store %struct.pvscsi_ctx* %1, %struct.pvscsi_ctx** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store %struct.PVSCSIRingReqDesc* %3, %struct.PVSCSIRingReqDesc** %8, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %14 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %8, align 8
  %17 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %8, align 8
  %19 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %18, i32 0, i32 1
  store i8* null, i8** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %84

23:                                               ; preds = %4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %25 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %24)
  store %struct.scatterlist* %25, %struct.scatterlist** %11, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %27 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %23
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %32 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @pvscsi_create_sg(%struct.pvscsi_ctx* %36, %struct.scatterlist* %37, i32 %38)
  %40 = load i32, i32* @PVSCSI_FLAG_CMD_WITH_SG_LIST, align 4
  %41 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %8, align 8
  %42 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %48, i32 0, i32 2
  %50 = load %struct.scatterlist*, %struct.scatterlist** %49, align 8
  %51 = load i32, i32* @SGL_SIZE, align 4
  %52 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %53 = call i8* @pci_map_single(i32 %47, %struct.scatterlist* %50, i32 %51, i32 %52)
  %54 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %8, align 8
  %60 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %66

61:                                               ; preds = %30
  %62 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %63 = call i8* @sg_dma_address(%struct.scatterlist* %62)
  %64 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %8, align 8
  %65 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %35
  br label %84

67:                                               ; preds = %23
  %68 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @pci_map_single(i32 %70, %struct.scatterlist* %71, i32 %72, i32 %75)
  %77 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %8, align 8
  %83 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %22, %67, %66
  ret void
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @pvscsi_create_sg(%struct.pvscsi_ctx*, %struct.scatterlist*, i32) #1

declare dso_local i8* @pci_map_single(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i8* @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
