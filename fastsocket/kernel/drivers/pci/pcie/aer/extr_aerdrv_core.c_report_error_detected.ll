; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_report_error_detected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_report_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*, i64)* }
%struct.pci_dev.0 = type opaque
%struct.aer_broadcast_data = type { i64, i32 }

@pci_channel_io_frozen = common dso_local global i64 0, align 8
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"device has %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no AER-aware driver\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no driver\00", align 1
@PCI_ERS_RESULT_NO_AER_DRIVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @report_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_error_detected(%struct.pci_dev* %0, i8* %1) #0 {
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
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %15 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %27, align 8
  %29 = icmp ne %struct.pci_error_handlers* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %34, align 8
  %36 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %35, i32 0, i32 0
  %37 = load i32 (%struct.pci_dev.0*, i64)*, i32 (%struct.pci_dev.0*, i64)** %36, align 8
  %38 = icmp ne i32 (%struct.pci_dev.0*, i64)* %37, null
  br i1 %38, label %75, label %39

39:                                               ; preds = %30, %23, %2
  %40 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %41 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @pci_channel_io_frozen, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @KERN_DEBUG, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %62 = call i32 @dev_printk(i32 %53, %struct.TYPE_4__* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %52, %45, %39
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @PCI_ERS_RESULT_NO_AER_DRIVER, align 4
  store i32 %71, i32* %5, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %90

75:                                               ; preds = %30
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %79, align 8
  store %struct.pci_error_handlers* %80, %struct.pci_error_handlers** %6, align 8
  %81 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %6, align 8
  %82 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %81, i32 0, i32 0
  %83 = load i32 (%struct.pci_dev.0*, i64)*, i32 (%struct.pci_dev.0*, i64)** %82, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = bitcast %struct.pci_dev* %84 to %struct.pci_dev.0*
  %86 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %87 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 %83(%struct.pci_dev.0* %85, i64 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %75, %74
  %91 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %92 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @merge_result(i32 %93, i32 %94)
  %96 = load %struct.aer_broadcast_data*, %struct.aer_broadcast_data** %7, align 8
  %97 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @up(i32* %100)
  ret i32 0
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @merge_result(i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
