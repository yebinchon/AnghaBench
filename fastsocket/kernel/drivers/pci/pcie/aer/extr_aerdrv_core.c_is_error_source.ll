; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_is_error_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_is_error_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aer_err_info = type { i32, i64, i32 }

@nosourceid = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_AER_FLAGS = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@AER_CORRECTABLE = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.aer_err_info*)* @is_error_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_error_source(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.aer_err_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %5, align 8
  %10 = load i32, i32* @nosourceid, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  %13 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %14 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @PCI_BUS_NUM(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %20 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = icmp eq i32 %21, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %103

34:                                               ; preds = %18
  %35 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %36 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %103

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %12, %2
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %103

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %50 = call i32 @pcie_capability_read_word(%struct.pci_dev* %48, i32 %49, i32* %9)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PCI_EXP_AER_FLAGS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %103

56:                                               ; preds = %47
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %59 = call i32 @pci_find_ext_capability(%struct.pci_dev* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %103

63:                                               ; preds = %56
  %64 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %65 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AER_CORRECTABLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @pci_read_config_dword(%struct.pci_dev* %70, i64 %74, i32* %7)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @pci_read_config_dword(%struct.pci_dev* %76, i64 %80, i32* %8)
  br label %95

82:                                               ; preds = %63
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @pci_read_config_dword(%struct.pci_dev* %83, i64 %87, i32* %7)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @pci_read_config_dword(%struct.pci_dev* %89, i64 %93, i32* %8)
  br label %95

95:                                               ; preds = %82, %69
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %103

102:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %101, %62, %55, %46, %39, %33
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @PCI_BUS_NUM(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
