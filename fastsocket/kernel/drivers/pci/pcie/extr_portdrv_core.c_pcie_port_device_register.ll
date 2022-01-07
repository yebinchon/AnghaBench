; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCIE_PORT_DEVICE_MAXSERVICES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_VC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_port_device_register(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i32 @pcie_get_port_device_capability(%struct.pci_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %92

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %92

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @pci_set_master(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @init_service_irqs(%struct.pci_dev* %33, i32* %15, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* @PCIE_PORT_SERVICE_VC, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %88

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %30
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 1, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %73

59:                                               ; preds = %51
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %15, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pcie_device_init(%struct.pci_dev* %60, i32 %61, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %72, %58
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %47

76:                                               ; preds = %47
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %92

85:                                               ; preds = %79
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = call i32 @cleanup_service_irqs(%struct.pci_dev* %86)
  br label %88

88:                                               ; preds = %85, %44
  %89 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %90 = call i32 @pci_disable_device(%struct.pci_dev* %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %84, %28, %20
  %93 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pcie_get_port_device_capability(%struct.pci_dev*) #2

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #2

declare dso_local i32 @init_service_irqs(%struct.pci_dev*, i32*, i32) #2

declare dso_local i32 @pcie_device_init(%struct.pci_dev*, i32, i32) #2

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #2

declare dso_local i32 @cleanup_service_irqs(%struct.pci_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
