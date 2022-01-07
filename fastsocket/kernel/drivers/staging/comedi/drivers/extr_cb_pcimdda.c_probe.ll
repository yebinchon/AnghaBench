; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdda.c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdda.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.comedi_device = type { %struct.TYPE_9__* }
%struct.comedi_devconfig = type { i64* }

@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPUTERBOARDS = common dso_local global i64 0, align 8
@boards = common dso_local global %struct.TYPE_9__* null, align 8
@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@thisboard = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"cb_pcimdda: Failed to enable PCI device and request regions\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@REGS_BADRINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"cb_pcimdda: No supported ComputerBoards/MeasurementComputing card found at the requested position\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load i32, i32* @PCI_ANY_ID, align 4
  %10 = load i32, i32* @PCI_ANY_ID, align 4
  %11 = call %struct.pci_dev* @pci_get_device(i32 %9, i32 %10, %struct.pci_dev* null)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  br label %12

12:                                               ; preds = %121, %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %126

15:                                               ; preds = %12
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_VENDOR_ID_COMPUTERBOARDS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %121

22:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %117, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @boards, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %120

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @boards, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %117

40:                                               ; preds = %28
  %41 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %47, %40
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %54
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @PCI_SLOT(i32 %69)
  %71 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66, %54
  br label %117

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store %struct.pci_dev* %80, %struct.pci_dev** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @boards, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %85
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %88, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @comedi_pci_enable(%struct.pci_dev* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = call i32 @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %130

99:                                               ; preds = %79
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load %struct.pci_dev*, %struct.pci_dev** %101, align 8
  %103 = load i32, i32* @REGS_BADRINDEX, align 4
  %104 = call i64 @pci_resource_start(%struct.pci_dev* %102, i32 %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @thisboard, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %110, %113
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  store i32 0, i32* %3, align 4
  br label %130

117:                                              ; preds = %77, %39
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %23

120:                                              ; preds = %23
  br label %121

121:                                              ; preds = %120, %21
  %122 = load i32, i32* @PCI_ANY_ID, align 4
  %123 = load i32, i32* @PCI_ANY_ID, align 4
  %124 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %125 = call %struct.pci_dev* @pci_get_device(i32 %122, i32 %123, %struct.pci_dev* %124)
  store %struct.pci_dev* %125, %struct.pci_dev** %6, align 8
  br label %12

126:                                              ; preds = %12
  %127 = call i32 @printk(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %99, %95
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @comedi_pci_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
