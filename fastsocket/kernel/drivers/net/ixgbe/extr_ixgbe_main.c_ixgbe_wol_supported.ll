; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_wol_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_wol_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_DEVICE_CAPS_WOL_MASK = common dso_local global i32 0, align 4
@IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ = common dso_local global i32 0, align 4
@IXGBE_DEVICE_CAPS_WOL_PORT0_1 = common dso_local global i32 0, align 4
@IXGBE_DEVICE_CAPS_WOL_PORT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_wol_supported(%struct.ixgbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %7, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IXGBE_DEVICE_CAPS_WOL_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %57 [
    i32 137, label %18
    i32 140, label %30
    i32 139, label %34
    i32 138, label %40
    i32 136, label %41
    i32 135, label %41
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %29 [
    i32 133, label %20
    i32 128, label %28
    i32 129, label %28
    i32 130, label %28
    i32 132, label %28
    i32 131, label %28
  ]

20:                                               ; preds = %18
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %29

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %18, %18, %18, %18, %18, %27
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %18, %28, %26
  br label %57

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %33 [
    i32 134, label %32
  ]

32:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %32
  br label %57

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IXGBE_SUBDEV_ID_82599_KX4_KR_MEZZ, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %57

40:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %57

41:                                               ; preds = %3, %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IXGBE_DEVICE_CAPS_WOL_PORT0_1, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @IXGBE_DEVICE_CAPS_WOL_PORT0, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %41
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %49, %45
  br label %57

57:                                               ; preds = %3, %56, %40, %39, %33, %29
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
