; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_ccb_task_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_ccb_task_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.sas_task = type { i32, i32, i32*, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pm8001_ccb_info = type { i32, i64, i32*, i64 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_ccb_task_free(%struct.pm8001_hba_info* %0, %struct.sas_task* %1, %struct.pm8001_ccb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %5, align 8
  store %struct.sas_task* %1, %struct.sas_task** %6, align 8
  store %struct.pm8001_ccb_info* %2, %struct.pm8001_ccb_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %10 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %75

14:                                               ; preds = %4
  %15 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sas_protocol_ata(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %14
  %21 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %22 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %27 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %30 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %36 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_unmap_sg(i32 %28, i32* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %25, %20
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %42 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %62 [
    i32 130, label %44
    i32 131, label %61
    i32 128, label %61
    i32 129, label %61
  ]

44:                                               ; preds = %40
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %49 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %52 = call i32 @dma_unmap_sg(i32 %47, i32* %50, i32 1, i32 %51)
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %57 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %60 = call i32 @dma_unmap_sg(i32 %55, i32* %58, i32 1, i32 %59)
  br label %63

61:                                               ; preds = %40, %40, %40
  br label %62

62:                                               ; preds = %40, %61
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %65 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %67 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %69 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %71 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @pm8001_ccb_free(%struct.pm8001_hba_info* %72, i32 %73)
  br label %75

75:                                               ; preds = %63, %13
  ret void
}

declare dso_local i32 @sas_protocol_ata(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @pm8001_ccb_free(%struct.pm8001_hba_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
