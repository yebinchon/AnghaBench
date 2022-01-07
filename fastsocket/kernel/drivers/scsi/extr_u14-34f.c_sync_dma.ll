; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_sync_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_sync_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mscp = type { i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.mscp* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @sync_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_dma(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mscp*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_2__* @HD(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.mscp*, %struct.mscp** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mscp, %struct.mscp* %11, i64 %13
  store %struct.mscp* %14, %struct.mscp** %6, align 8
  %15 = load %struct.mscp*, %struct.mscp** %6, align 8
  %16 = getelementptr inbounds %struct.mscp, %struct.mscp* %15, i32 0, i32 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %7, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mscp*, %struct.mscp** %6, align 8
  %22 = getelementptr inbounds %struct.mscp, %struct.mscp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @DEV2H(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.TYPE_2__* @HD(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mscp*, %struct.mscp** %6, align 8
  %32 = getelementptr inbounds %struct.mscp, %struct.mscp* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @DEV2H(i32 %33)
  %35 = load %struct.mscp*, %struct.mscp** %6, align 8
  %36 = getelementptr inbounds %struct.mscp, %struct.mscp* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @DEV2H(i32 %37)
  %39 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %40 = call i32 @pci_dma_sync_single_for_cpu(i32 %30, i64 %34, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %26, %2
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %43 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.TYPE_2__* @HD(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %51 = call i32 @scsi_sglist(%struct.scsi_cmnd* %50)
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %53 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pci_dma_sync_sg_for_cpu(i32 %49, i32 %51, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %41
  %57 = load %struct.mscp*, %struct.mscp** %6, align 8
  %58 = getelementptr inbounds %struct.mscp, %struct.mscp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @DEV2H(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.mscp*, %struct.mscp** %6, align 8
  %66 = getelementptr inbounds %struct.mscp, %struct.mscp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @DEV2H(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = call %struct.TYPE_2__* @HD(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mscp*, %struct.mscp** %6, align 8
  %76 = getelementptr inbounds %struct.mscp, %struct.mscp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @DEV2H(i32 %77)
  %79 = load %struct.mscp*, %struct.mscp** %6, align 8
  %80 = getelementptr inbounds %struct.mscp, %struct.mscp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @DEV2H(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pci_dma_sync_single_for_cpu(i32 %74, i64 %78, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %70, %64
  ret void
}

declare dso_local %struct.TYPE_2__* @HD(i32) #1

declare dso_local i64 @DEV2H(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i64, i64, i32) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @pci_dma_sync_sg_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
