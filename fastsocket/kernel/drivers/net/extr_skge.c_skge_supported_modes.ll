; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_supported_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_supported_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @skge_supported_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_supported_modes(%struct.skge_hw* %0) #0 {
  %2 = alloca %struct.skge_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %2, align 8
  %4 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %5 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %1
  %9 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %10 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_TP, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %25 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %8
  %30 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %31 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %8
  %41 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %42 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHIP_ID_YUKON, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %29
  br label %61

53:                                               ; preds = %1
  %54 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %55 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
