; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64, i32, i32, i32, i64 }
%struct.hostdata = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@sha = common dso_local global i32* null, align 8
@NO_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @eata2x_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata2x_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.hostdata*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hostdata*
  store %struct.hostdata* %8, %struct.hostdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %17 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %9

28:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %37 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %40 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %48 = call i32 @pci_unmap_single(i32 %38, i32 %46, i32 4, i32 %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %54 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %59 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %62 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %65 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pci_free_consistent(i32 %60, i32 4, i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %52
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** @sha, align 8
  %73 = load %struct.hostdata*, %struct.hostdata** %3, align 8
  %74 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = call i32 @free_irq(i32 %71, i32* %76)
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NO_DMA, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @free_dma(i64 %86)
  br label %88

88:                                               ; preds = %83, %68
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @release_region(i32 %91, i32 %94)
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %97 = call i32 @scsi_unregister(%struct.Scsi_Host* %96)
  ret i32 0
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @scsi_unregister(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
