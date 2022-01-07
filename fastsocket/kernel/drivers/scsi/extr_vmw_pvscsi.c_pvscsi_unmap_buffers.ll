; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_unmap_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_unmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32 }
%struct.pvscsi_ctx = type { i64, i64, i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, i32 }

@SGL_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*, %struct.pvscsi_ctx*)* @pvscsi_unmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_unmap_buffers(%struct.pvscsi_adapter* %0, %struct.pvscsi_ctx* %1) #0 {
  %3 = alloca %struct.pvscsi_adapter*, align 8
  %4 = alloca %struct.pvscsi_ctx*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %3, align 8
  store %struct.pvscsi_ctx* %1, %struct.pvscsi_ctx** %4, align 8
  %8 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %8, i32 0, i32 3
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %21)
  %23 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SGL_SIZE, align 4
  %35 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %36 = call i32 @pci_unmap_single(i32 %30, i64 %33, i32 %34, i32 %35)
  %37 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %27, %20
  br label %52

40:                                               ; preds = %15
  %41 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pci_unmap_single(i32 %43, i64 %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %40, %39
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %66 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %67 = call i32 @pci_unmap_single(i32 %61, i64 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
