; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_report_mmio_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_report_mmio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque
%struct.aer_broadcast_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @report_mmio_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_mmio_enabled(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_error_handlers*, align 8
  %7 = alloca %struct.aer_broadcast_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.aer_broadcast_data*
  store %struct.aer_broadcast_data* %9, %struct.aer_broadcast_data** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %22, align 8
  %24 = icmp ne %struct.pci_error_handlers* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %29, align 8
  %31 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %30, i32 0, i32 0
  %32 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %31, align 8
  %33 = icmp ne i32 (%struct.pci_dev.0*)* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %18, %2
  br label %54

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %39, align 8
  store %struct.pci_error_handlers* %40, %struct.pci_error_handlers** %6, align 8
  %41 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %6, align 8
  %42 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %41, i32 0, i32 0
  %43 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %42, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = bitcast %struct.pci_dev* %44 to %struct.pci_dev.0*
  %46 = call i32 %43(%struct.pci_dev.0* %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %48 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @merge_result(i32 %49, i32 %50)
  %52 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %53 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %35, %34
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @up(i32* %57)
  ret i32 0
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @merge_result(i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
