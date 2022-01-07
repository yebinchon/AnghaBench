; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c___ixgbe_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c___ixgbe_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.net_device = type { i32 }

@IXGBE_WUFC_MC = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_GIO_DIS = common dso_local global i32 0, align 4
@IXGBE_WUFC = common dso_local global i32 0, align 4
@IXGBE_WUC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*)* @__ixgbe_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ixgbe_shutdown(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %7, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i32 @netif_device_detach(%struct.net_device* %21)
  %23 = call i32 (...) @rtnl_lock()
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %29 = call i32 @ixgbe_down(%struct.ixgbe_adapter* %28)
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %31 = call i32 @ixgbe_free_irq(%struct.ixgbe_adapter* %30)
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %33 = call i32 @ixgbe_free_all_tx_resources(%struct.ixgbe_adapter* %32)
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %35 = call i32 @ixgbe_free_all_rx_resources(%struct.ixgbe_adapter* %34)
  br label %36

36:                                               ; preds = %27, %2
  %37 = call i32 (...) @rtnl_unlock()
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %39 = call i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter* %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @ixgbe_set_rx_mode(%struct.net_device* %43)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %48, align 8
  %50 = icmp ne i32 (%struct.ixgbe_hw.0*)* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %55, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %58 = bitcast %struct.ixgbe_hw* %57 to %struct.ixgbe_hw.0*
  %59 = call i32 %56(%struct.ixgbe_hw.0* %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @IXGBE_WUFC_MC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %67 = load i32, i32* @IXGBE_FCTRL, align 4
  %68 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %73 = load i32, i32* @IXGBE_FCTRL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %65, %60
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %78 = load i32, i32* @IXGBE_CTRL, align 4
  %79 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @IXGBE_CTRL_GIO_DIS, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %84 = load i32, i32* @IXGBE_CTRL, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %83, i32 %84, i32 %85)
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %88 = load i32, i32* @IXGBE_WUFC, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %87, i32 %88, i32 %89)
  br label %98

91:                                               ; preds = %36
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %93 = load i32, i32* @IXGBE_WUC, align 4
  %94 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %93, i32 0)
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %96 = load i32, i32* @IXGBE_WUFC, align 4
  %97 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %91, %76
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %114 [
    i32 130, label %103
    i32 129, label %106
    i32 128, label %106
  ]

103:                                              ; preds = %98
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = call i32 @pci_wake_from_d3(%struct.pci_dev* %104, i32 0)
  br label %115

106:                                              ; preds = %98, %98
  %107 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @pci_wake_from_d3(%struct.pci_dev* %107, i32 %112)
  br label %115

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114, %106, %103
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %4, align 8
  store i32 %120, i32* %121, align 4
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %123 = call i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter* %122)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %125 = call i32 @pci_disable_device(%struct.pci_dev* %124)
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_down(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_irq(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_all_tx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_all_rx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
