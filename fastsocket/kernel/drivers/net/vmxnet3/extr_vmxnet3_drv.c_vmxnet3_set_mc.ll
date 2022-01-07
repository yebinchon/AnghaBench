; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_set_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_set_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.Vmxnet3_RxFilterConf }
%struct.Vmxnet3_RxFilterConf = type { i32, i64, i64 }

@VMXNET3_RXM_UCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@VMXNET3_RXM_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@VMXNET3_RXM_BCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@VMXNET3_RXM_ALL_MULTI = common dso_local global i32 0, align 4
@VMXNET3_RXM_MCAST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to copy mcast list, setting ALL_MULTI\0A\00", align 1
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_RX_MODE = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_MAC_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @vmxnet3_set_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_set_mc(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Vmxnet3_RxFilterConf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.vmxnet3_adapter* %9, %struct.vmxnet3_adapter** %3, align 8
  %10 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.Vmxnet3_RxFilterConf* %14, %struct.Vmxnet3_RxFilterConf** %5, align 8
  store i32* null, i32** %6, align 8
  %15 = load i32, i32* @VMXNET3_RXM_UCAST, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @VMXNET3_RXM_PROMISC, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_BROADCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @VMXNET3_RXM_BCAST, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @VMXNET3_RXM_ALL_MULTI, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %81

48:                                               ; preds = %37
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @netdev_mc_empty(%struct.net_device* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32* @vmxnet3_copy_mc(%struct.net_device* %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i32, i32* @VMXNET3_RXM_MCAST, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @netdev_mc_count(%struct.net_device* %61)
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i64 @cpu_to_le16(i32 %64)
  %66 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %67 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @virt_to_phys(i32* %68)
  %70 = call i64 @cpu_to_le64(i32 %69)
  %71 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %72 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %79

73:                                               ; preds = %52
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @netdev_info(%struct.net_device* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @VMXNET3_RXM_ALL_MULTI, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %57
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %44
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @VMXNET3_RXM_MCAST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %88 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %90 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %92, i32 0, i32 0
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %98 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cpu_to_le32(i32 %102)
  %104 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %105 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %107 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %108 = load i32, i32* @VMXNET3_CMD_UPDATE_RX_MODE, align 4
  %109 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %91
  %111 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %112 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %113 = load i32, i32* @VMXNET3_CMD_UPDATE_MAC_FILTERS, align 4
  %114 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %111, i32 %112, i32 %113)
  %115 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %115, i32 0, i32 0
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @kfree(i32* %119)
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32* @vmxnet3_copy_mc(%struct.net_device*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
