; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UPT1_F_RXCSUM = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_FEATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @vmxnet3_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_set_rx_csum(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.vmxnet3_adapter* %8, %struct.vmxnet3_adapter** %5, align 8
  %9 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @UPT1_F_RXCSUM, align 4
  %26 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* @UPT1_F_RXCSUM, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %36
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %34, %24
  %46 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %51 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %52 = load i32, i32* @VMXNET3_CMD_UPDATE_FEATURE, align 4
  %53 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %50, i32 %51, i32 %52)
  %54 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %54, i32 0, i32 1
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %45, %14
  br label %59

59:                                               ; preds = %58, %2
  ret i32 0
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
