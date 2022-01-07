; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_link_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_link_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*, i32*)* @ixgbevf_link_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_link_test(%struct.ixgbevf_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 0
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.0*
  %18 = call i32 %15(%struct.ixgbe_hw.0* %17, i32* %7, i32* %6, i32 1)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
