; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c___e1000_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c___e1000_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i64, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64, i64 }

@__E1000_RESETTING = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP7_DATA = common dso_local global i32 0, align 4
@WUC = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@WUFC = common dso_local global i32 0, align 4
@E1000_CTRL_ADVD3WUC = common dso_local global i32 0, align 4
@E1000_CTRL_EN_PHY_PWR_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*)* @__e1000_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__e1000_shutdown(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %13)
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.e1000_adapter* %16, %struct.e1000_adapter** %6, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 3
  store %struct.e1000_hw* %18, %struct.e1000_hw** %7, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_device_detach(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @__E1000_RESETTING, align 4
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %34 = call i32 @e1000_down(%struct.e1000_adapter* %33)
  br label %35

35:                                               ; preds = %27, %2
  %36 = load i32, i32* @STATUS, align 4
  %37 = call i32 @er32(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @E1000_STATUS_LU, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %52 = call i32 @e1000_setup_rctl(%struct.e1000_adapter* %51)
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @e1000_set_rx_mode(%struct.net_device* %53)
  %55 = load i32, i32* @RCTL, align 4
  %56 = call i32 @er32(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @E1000_WUFC_MC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* @E1000_RCTL_MPE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %50
  %66 = load i32, i32* @RCTL, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @E1000_RCTL_EN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ew32(i32 %66, i32 %69)
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_82540, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %65
  %77 = load i32, i32* @CTRL, align 4
  %78 = call i32 @er32(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, 3145728
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @CTRL, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ew32(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %65
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @e1000_media_type_fiber, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90, %84
  %97 = load i32, i32* @CTRL_EXT, align 4
  %98 = call i32 @er32(i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @E1000_CTRL_EXT_SDP7_DATA, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @CTRL_EXT, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ew32(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %90
  %106 = load i32, i32* @WUC, align 4
  %107 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %108 = call i32 @ew32(i32 %106, i32 %107)
  %109 = load i32, i32* @WUFC, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @ew32(i32 %109, i32 %110)
  br label %117

112:                                              ; preds = %47
  %113 = load i32, i32* @WUC, align 4
  %114 = call i32 @ew32(i32 %113, i32 0)
  %115 = load i32, i32* @WUFC, align 4
  %116 = call i32 @ew32(i32 %115, i32 0)
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %119 = call i32 @e1000_release_manageability(%struct.e1000_adapter* %118)
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i32*, i32** %4, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32*, i32** %4, align 8
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %117
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = call i64 @netif_running(%struct.net_device* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %138 = call i32 @e1000_free_irq(%struct.e1000_adapter* %137)
  br label %139

139:                                              ; preds = %136, %132
  %140 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %141 = call i32 @pci_disable_device(%struct.pci_dev* %140)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @e1000_down(%struct.e1000_adapter*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_setup_rctl(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_release_manageability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
