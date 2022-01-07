; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i32, %struct.TYPE_6__* }

@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ADLINK = common dso_local global i64 0, align 8
@pci6208_boards = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"comedi%d: no supported board found! (req. bus/slot : %d/%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"comedi%d: found %s (b:s:f=%d:%d:%d) , irq=%d\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @pci6208_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci6208_find_device(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PCI_ANY_ID, align 4
  %11 = load i32, i32* @PCI_ANY_ID, align 4
  %12 = call %struct.pci_dev* @pci_get_device(i32 %10, i32 %11, %struct.pci_dev* null)
  store %struct.pci_dev* %12, %struct.pci_dev** %8, align 8
  br label %13

13:                                               ; preds = %75, %3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %16, label %80

16:                                               ; preds = %13
  %17 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_VENDOR_ID_ADLINK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pci6208_boards, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pci6208_boards, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42, %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PCI_SLOT(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %45
  br label %70

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pci6208_boards, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 1
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %68, align 8
  br label %89

69:                                               ; preds = %28
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %23

73:                                               ; preds = %23
  br label %74

74:                                               ; preds = %73, %16
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* @PCI_ANY_ID, align 4
  %77 = load i32, i32* @PCI_ANY_ID, align 4
  %78 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %79 = call %struct.pci_dev* @pci_get_device(i32 %76, i32 %77, %struct.pci_dev* %78)
  store %struct.pci_dev* %79, %struct.pci_dev** %8, align 8
  br label %13

80:                                               ; preds = %13
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %119

89:                                               ; preds = %62
  %90 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pci6208_boards, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PCI_SLOT(i32 %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PCI_FUNC(i32 %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %98, i32 %103, i32 %107, i32 %111, i32 %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store %struct.pci_dev* %116, %struct.pci_dev** %118, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %89, %80
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
