; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @ixgbe_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_mdio_read(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_adapter*, align 8
  %11 = alloca %struct.ixgbe_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter** %10, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 %33(%struct.ixgbe_hw.0* %35, i32 %36, i32 %37, i32* %12)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
