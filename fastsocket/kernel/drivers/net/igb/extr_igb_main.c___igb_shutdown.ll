; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c___igb_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c___igb_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_WUC = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@E1000_WUFC = common dso_local global i32 0, align 4
@E1000_CTRL_ADVD3WUC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32)* @__igb_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igb_shutdown(%struct.pci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.igb_adapter* %17, %struct.igb_adapter** %8, align 8
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 2
  store %struct.e1000_hw* %19, %struct.e1000_hw** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @E1000_WUFC_LNKC, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  store i32 %29, i32* %13, align 4
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i32 @netif_device_detach(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i64 @netif_running(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @__igb_close(%struct.net_device* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %40 = call i32 @igb_clear_interrupt_scheme(%struct.igb_adapter* %39)
  %41 = load i32, i32* @E1000_STATUS, align 4
  %42 = call i32 @rd32(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @E1000_STATUS_LU, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %47, %38
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %52
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %57 = call i32 @igb_setup_rctl(%struct.igb_adapter* %56)
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @igb_set_rx_mode(%struct.net_device* %58)
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @E1000_WUFC_MC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load i32, i32* @E1000_RCTL, align 4
  %66 = call i32 @rd32(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @E1000_RCTL_MPE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @E1000_RCTL, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @wr32(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %55
  %74 = load i32, i32* @E1000_CTRL, align 4
  %75 = call i32 @rd32(i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, 1048576
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @E1000_CTRL, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @wr32(i32 %78, i32 %79)
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %82 = call i32 @igb_disable_pcie_master(%struct.e1000_hw* %81)
  %83 = load i32, i32* @E1000_WUC, align 4
  %84 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %85 = call i32 @wr32(i32 %83, i32 %84)
  %86 = load i32, i32* @E1000_WUFC, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @wr32(i32 %86, i32 %87)
  br label %94

89:                                               ; preds = %52
  %90 = load i32, i32* @E1000_WUC, align 4
  %91 = call i32 @wr32(i32 %90, i32 0)
  %92 = load i32, i32* @E1000_WUFC, align 4
  %93 = call i32 @wr32(i32 %92, i32 0)
  br label %94

94:                                               ; preds = %89, %73
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %99 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %97, %94
  %103 = phi i1 [ true, %94 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %111 = call i32 @igb_power_down_link(%struct.igb_adapter* %110)
  br label %115

112:                                              ; preds = %102
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %114 = call i32 @igb_power_up_link(%struct.igb_adapter* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %117 = call i32 @igb_release_hw_control(%struct.igb_adapter* %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = call i32 @pci_disable_device(%struct.pci_dev* %118)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__igb_close(%struct.net_device*, i32) #1

declare dso_local i32 @igb_clear_interrupt_scheme(%struct.igb_adapter*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_setup_rctl(%struct.igb_adapter*) #1

declare dso_local i32 @igb_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @igb_power_down_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_power_up_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_release_hw_control(%struct.igb_adapter*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
