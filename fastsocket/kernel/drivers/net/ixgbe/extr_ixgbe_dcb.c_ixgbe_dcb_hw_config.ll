; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_dcb_config = type { i32 }

@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@DCB_TX_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_hw_config(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_dcb_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %29 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %30 = call i32 @ixgbe_dcb_unpack_pfc(%struct.ixgbe_dcb_config* %29, i32* %6)
  %31 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %32 = load i32, i32* @DCB_TX_CONFIG, align 4
  %33 = call i32 @ixgbe_dcb_unpack_refill(%struct.ixgbe_dcb_config* %31, i32 %32, i32* %25)
  %34 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %35 = call i32 @ixgbe_dcb_unpack_max(%struct.ixgbe_dcb_config* %34, i32* %28)
  %36 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %37 = load i32, i32* @DCB_TX_CONFIG, align 4
  %38 = call i32 @ixgbe_dcb_unpack_bwgid(%struct.ixgbe_dcb_config* %36, i32 %37, i32* %19)
  %39 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %40 = load i32, i32* @DCB_TX_CONFIG, align 4
  %41 = call i32 @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config* %39, i32 %40, i32* %16)
  %42 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %4, align 8
  %43 = load i32, i32* @DCB_TX_CONFIG, align 4
  %44 = call i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config* %42, i32 %43, i32* %22)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %57 [
    i32 130, label %49
    i32 129, label %53
    i32 128, label %53
  ]

49:                                               ; preds = %2
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ixgbe_dcb_hw_config_82598(%struct.ixgbe_hw* %50, i32 %51, i32* %25, i32* %28, i32* %19, i32* %16)
  store i32 %52, i32* %5, align 4
  br label %58

53:                                               ; preds = %2, %2
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ixgbe_dcb_hw_config_82599(%struct.ixgbe_hw* %54, i32 %55, i32* %25, i32* %28, i32* %19, i32* %16, i32* %22)
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %53, %49
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixgbe_dcb_unpack_pfc(%struct.ixgbe_dcb_config*, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_refill(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_max(%struct.ixgbe_dcb_config*, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_bwgid(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config*, i32, i32*) #2

declare dso_local i32 @ixgbe_dcb_hw_config_82598(%struct.ixgbe_hw*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ixgbe_dcb_hw_config_82599(%struct.ixgbe_hw*, i32, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
