; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_get_devs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_get_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.e752x_pvt = type { i32*, i32, %struct.pci_dev*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"error reporting device not found:vendor %x device 0x%x (broken BIOS?)\0A\00", align 1
@e752x_devs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.e752x_pvt*)* @e752x_get_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e752x_get_devs(%struct.pci_dev* %0, i32 %1, %struct.e752x_pvt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e752x_pvt*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.e752x_pvt* %2, %struct.e752x_pvt** %7, align 8
  %9 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %10 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %11 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %16 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i8* @pci_get_device(i32 %9, i32 %14, i32* %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %21 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %23 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PCI_DEVFN(i32 0, i32 1)
  %31 = call i32* @pci_scan_single_device(i32 %29, i32 %30)
  %32 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %33 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %35 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @pci_dev_get(i32* %36)
  br label %38

38:                                               ; preds = %26, %3
  %39 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %40 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @e752x_devs, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @e752x_printk(i32 %44, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %51)
  store i32 1, i32* %4, align 4
  br label %81

53:                                               ; preds = %38
  %54 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @e752x_devs, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @pci_get_device(i32 %54, i32 %60, i32* null)
  %62 = bitcast i8* %61 to %struct.pci_dev*
  store %struct.pci_dev* %62, %struct.pci_dev** %8, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %64 = icmp eq %struct.pci_dev* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %76

66:                                               ; preds = %53
  %67 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %68 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %69 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %68, i32 0, i32 2
  store %struct.pci_dev* %67, %struct.pci_dev** %69, align 8
  %70 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %71 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @pci_dev_get(i32* %72)
  %74 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %75 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %4, align 4
  br label %81

76:                                               ; preds = %65
  %77 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %78 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @pci_dev_put(i32* %79)
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %66, %43
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32* @pci_scan_single_device(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_get(i32*) #1

declare dso_local i32 @e752x_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @pci_dev_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
