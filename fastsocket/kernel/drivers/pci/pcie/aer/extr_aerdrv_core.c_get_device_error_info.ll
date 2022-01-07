; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_get_device_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_get_device_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i32, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@AER_CORRECTABLE = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@AER_NONFATAL = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@AER_LOG_TLP_MASKS = common dso_local global i32 0, align 4
@PCI_ERR_HEADER_LOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.aer_err_info*)* @get_device_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_device_error_info(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.aer_err_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %5, align 8
  %8 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %9 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %11 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %14 = call i32 @pci_find_ext_capability(%struct.pci_dev* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %154

18:                                               ; preds = %2
  %19 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %20 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AER_CORRECTABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %31 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %30, i32 0, i32 0
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i64 %29, i32* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %39 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %38, i32 0, i32 3
  %40 = call i32 @pci_read_config_dword(%struct.pci_dev* %33, i64 %37, i32* %39)
  %41 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %42 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %45 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %154

51:                                               ; preds = %24
  br label %153

52:                                               ; preds = %18
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %61 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AER_NONFATAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %152

65:                                               ; preds = %59, %52
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %72 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %71, i32 0, i32 0
  %73 = call i32 @pci_read_config_dword(%struct.pci_dev* %66, i64 %70, i32* %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %80 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %79, i32 0, i32 3
  %81 = call i32 @pci_read_config_dword(%struct.pci_dev* %74, i64 %78, i32* %80)
  %82 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %83 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %86 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %154

92:                                               ; preds = %65
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @PCI_ERR_CAP, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @pci_read_config_dword(%struct.pci_dev* %93, i64 %97, i32* %7)
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @PCI_ERR_CAP_FEP(i32 %99)
  %101 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %102 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %104 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AER_LOG_TLP_MASKS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %92
  %110 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %111 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %118 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @pci_read_config_dword(%struct.pci_dev* %112, i64 %116, i32* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %125 = add nsw i64 %123, %124
  %126 = add nsw i64 %125, 4
  %127 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %128 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = call i32 @pci_read_config_dword(%struct.pci_dev* %121, i64 %126, i32* %129)
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %135 = add nsw i64 %133, %134
  %136 = add nsw i64 %135, 8
  %137 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %138 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = call i32 @pci_read_config_dword(%struct.pci_dev* %131, i64 %136, i32* %139)
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @PCI_ERR_HEADER_LOG, align 8
  %145 = add nsw i64 %143, %144
  %146 = add nsw i64 %145, 12
  %147 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %148 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = call i32 @pci_read_config_dword(%struct.pci_dev* %141, i64 %146, i32* %149)
  br label %151

151:                                              ; preds = %109, %92
  br label %152

152:                                              ; preds = %151, %59
  br label %153

153:                                              ; preds = %152, %51
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %91, %50, %17
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @PCI_ERR_CAP_FEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
