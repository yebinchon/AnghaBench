; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_device_supports_autoneg_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_device_supports_autoneg_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %37 [
    i32 128, label %10
    i32 129, label %10
    i32 131, label %29
    i32 130, label %30
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.0*
  %18 = call i32 %15(%struct.ixgbe_hw.0* %17, i32* %4, i32* %5, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %21
  br label %38

29:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %35 [
    i32 134, label %34
    i32 133, label %34
    i32 132, label %34
  ]

34:                                               ; preds = %30, %30, %30
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %1, %36
  br label %38

38:                                               ; preds = %37, %29, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
