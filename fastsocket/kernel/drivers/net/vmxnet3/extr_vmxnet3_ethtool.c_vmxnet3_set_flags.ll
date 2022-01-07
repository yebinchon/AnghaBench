; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETH_FLAG_LRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@UPT1_F_LRO = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_FEATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vmxnet3_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_set_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.vmxnet3_adapter* %9, %struct.vmxnet3_adapter** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ETH_FLAG_LRO, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NETIF_F_LRO, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %2
  %29 = load i32, i32* @NETIF_F_LRO, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %28
  %40 = load i32, i32* @UPT1_F_LRO, align 4
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %41
  store i32 %49, i32* %47, align 4
  br label %62

50:                                               ; preds = %28
  %51 = load i32, i32* @UPT1_F_LRO, align 4
  %52 = xor i32 %51, -1
  %53 = call i32 @cpu_to_le64(i32 %52)
  %54 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %53
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %50, %39
  %63 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %64 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %65 = load i32, i32* @VMXNET3_CMD_UPDATE_FEATURE, align 4
  %66 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %2
  ret i32 0
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
