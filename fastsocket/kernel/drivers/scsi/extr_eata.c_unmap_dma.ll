; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_unmap_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_unmap_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostdata = type { i32, %struct.mscp* }
%struct.mscp = type { i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hostdata*)* @unmap_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_dma(i32 %0, %struct.hostdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mscp*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hostdata* %1, %struct.hostdata** %4, align 8
  %8 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %9 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %8, i32 0, i32 1
  %10 = load %struct.mscp*, %struct.mscp** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mscp, %struct.mscp* %10, i64 %12
  store %struct.mscp* %13, %struct.mscp** %6, align 8
  %14 = load %struct.mscp*, %struct.mscp** %6, align 8
  %15 = getelementptr inbounds %struct.mscp, %struct.mscp* %14, i32 0, i32 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mscp*, %struct.mscp** %6, align 8
  %21 = getelementptr inbounds %struct.mscp, %struct.mscp* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @DEV2H(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %27 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mscp*, %struct.mscp** %6, align 8
  %30 = getelementptr inbounds %struct.mscp, %struct.mscp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @DEV2H(i32 %31)
  %33 = load %struct.mscp*, %struct.mscp** %6, align 8
  %34 = getelementptr inbounds %struct.mscp, %struct.mscp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @DEV2H(i32 %35)
  %37 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %38 = call i32 @pci_unmap_single(i32 %28, i64 %32, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %25, %2
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %41 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %45 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %48 = call i32 @scsi_sglist(%struct.scsi_cmnd* %47)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %50 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pci_unmap_sg(i32 %46, i32 %48, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %43, %39
  %54 = load %struct.mscp*, %struct.mscp** %6, align 8
  %55 = getelementptr inbounds %struct.mscp, %struct.mscp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @DEV2H(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load %struct.mscp*, %struct.mscp** %6, align 8
  %63 = getelementptr inbounds %struct.mscp, %struct.mscp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @DEV2H(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %69 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mscp*, %struct.mscp** %6, align 8
  %72 = getelementptr inbounds %struct.mscp, %struct.mscp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @DEV2H(i32 %73)
  %75 = load %struct.mscp*, %struct.mscp** %6, align 8
  %76 = getelementptr inbounds %struct.mscp, %struct.mscp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @DEV2H(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @pci_unmap_single(i32 %70, i64 %74, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %67, %61
  ret void
}

declare dso_local i64 @DEV2H(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i64, i32) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @pci_unmap_sg(i32, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
