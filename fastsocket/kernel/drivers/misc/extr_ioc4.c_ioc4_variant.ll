; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ioc4.c_ioc4_variant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ioc4.c_ioc4_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_driver_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@PCI_VENDOR_ID_QLOGIC = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_QLOGIC_ISP12160 = common dso_local global i32 0, align 4
@IOC4_VARIANT_IO9 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_VITESSE = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VITESSE_VSC7174 = common dso_local global i32 0, align 4
@IOC4_VARIANT_IO10 = common dso_local global i32 0, align 4
@IOC4_VARIANT_PCI_RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc4_driver_data*)* @ioc4_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc4_variant(%struct.ioc4_driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioc4_driver_data*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ioc4_driver_data* %0, %struct.ioc4_driver_data** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* @PCI_VENDOR_ID_QLOGIC, align 4
  %8 = load i32, i32* @PCI_DEVICE_ID_QLOGIC_ISP12160, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 %8, %struct.pci_dev* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = load %struct.ioc4_driver_data*, %struct.ioc4_driver_data** %3, align 8
  %15 = getelementptr inbounds %struct.ioc4_driver_data, %struct.ioc4_driver_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PCI_SLOT(i32 %30)
  %32 = icmp eq i32 3, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %27, %13, %6
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = icmp ne %struct.pci_dev* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %6, label %44

44:                                               ; preds = %42
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = icmp ne %struct.pci_dev* null, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_dev_put(%struct.pci_dev* %48)
  %50 = load i32, i32* @IOC4_VARIANT_IO9, align 4
  store i32 %50, i32* %2, align 4
  br label %99

51:                                               ; preds = %44
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %52

52:                                               ; preds = %88, %51
  %53 = load i32, i32* @PCI_VENDOR_ID_VITESSE, align 4
  %54 = load i32, i32* @PCI_DEVICE_ID_VITESSE_VSC7174, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call %struct.pci_dev* @pci_get_device(i32 %53, i32 %54, %struct.pci_dev* %55)
  store %struct.pci_dev* %56, %struct.pci_dev** %4, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = icmp ne %struct.pci_dev* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = load %struct.ioc4_driver_data*, %struct.ioc4_driver_data** %3, align 8
  %61 = getelementptr inbounds %struct.ioc4_driver_data, %struct.ioc4_driver_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %59
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PCI_SLOT(i32 %76)
  %78 = icmp eq i32 3, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %73, %59, %52
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = icmp ne %struct.pci_dev* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ false, %81 ], [ %87, %84 ]
  br i1 %89, label %52, label %90

90:                                               ; preds = %88
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = icmp ne %struct.pci_dev* null, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = call i32 @pci_dev_put(%struct.pci_dev* %94)
  %96 = load i32, i32* @IOC4_VARIANT_IO10, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @IOC4_VARIANT_PCI_RT, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %93, %47
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
