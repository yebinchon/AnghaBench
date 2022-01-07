; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_struct = type { %struct.mite_struct*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.mite_struct* }
%struct.pci_dev = type { i64 }

@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NATINST = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mite: allocation failed\0A\00", align 1
@MAX_MITE_DMA_CHANNELS = common dso_local global i32 0, align 4
@mite_devices = common dso_local global %struct.mite_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_init() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca %struct.mite_struct*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PCI_ANY_ID, align 4
  %5 = load i32, i32* @PCI_ANY_ID, align 4
  %6 = call %struct.pci_dev* @pci_get_device(i32 %4, i32 %5, %struct.pci_dev* null)
  store %struct.pci_dev* %6, %struct.pci_dev** %1, align 8
  br label %7

7:                                                ; preds = %70, %0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %10, label %75

10:                                               ; preds = %7
  %11 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_VENDOR_ID_NATINST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mite_struct* @kzalloc(i32 24, i32 %17)
  store %struct.mite_struct* %18, %struct.mite_struct** %2, align 8
  %19 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %20 = icmp ne %struct.mite_struct* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %24 = call i32 @pci_dev_put(%struct.pci_dev* %23)
  br label %75

25:                                               ; preds = %16
  %26 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %27 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %30 = call i32 @pci_dev_get(%struct.pci_dev* %29)
  %31 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %32 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %61, %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MAX_MITE_DMA_CHANNELS, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %39 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %40 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store %struct.mite_struct* %38, %struct.mite_struct** %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %48 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 8
  %54 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %55 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %37
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %33

64:                                               ; preds = %33
  %65 = load %struct.mite_struct*, %struct.mite_struct** @mite_devices, align 8
  %66 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %67 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %66, i32 0, i32 0
  store %struct.mite_struct* %65, %struct.mite_struct** %67, align 8
  %68 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  store %struct.mite_struct* %68, %struct.mite_struct** @mite_devices, align 8
  br label %69

69:                                               ; preds = %64, %10
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @PCI_ANY_ID, align 4
  %72 = load i32, i32* @PCI_ANY_ID, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %74 = call %struct.pci_dev* @pci_get_device(i32 %71, i32 %72, %struct.pci_dev* %73)
  store %struct.pci_dev* %74, %struct.pci_dev** %1, align 8
  br label %7

75:                                               ; preds = %21, %7
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local %struct.mite_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
