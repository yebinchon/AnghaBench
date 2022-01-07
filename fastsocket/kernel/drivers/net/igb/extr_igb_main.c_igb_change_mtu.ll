; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid MTU setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MTU > 9216 not supported.\0A\00", align 1
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@__IGB_RESETTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@MAX_STD_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @igb_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %6, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ETH_HLEN, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @ETH_FCS_LEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @VLAN_HLEN, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 68
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %2
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 9238
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %96

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ETH_FRAME_LEN, align 4
  %45 = load i32, i32* @ETH_FCS_LEN, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @ETH_FRAME_LEN, align 4
  %50 = load i32, i32* @ETH_FCS_LEN, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %59, %52
  %54 = load i32, i32* @__IGB_RESETTING, align 4
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %55, i32 0, i32 1
  %57 = call i64 @test_and_set_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @msleep(i32 1)
  br label %53

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i64 @netif_running(%struct.net_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %70 = call i32 @igb_down(%struct.igb_adapter* %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i64 @netif_running(%struct.net_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %87 = call i32 @igb_up(%struct.igb_adapter* %86)
  br label %91

88:                                               ; preds = %71
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %90 = call i32 @igb_reset(%struct.igb_adapter* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @__IGB_RESETTING, align 4
  %93 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %93, i32 0, i32 1
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %36, %27
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @igb_down(%struct.igb_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @igb_up(%struct.igb_adapter*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
