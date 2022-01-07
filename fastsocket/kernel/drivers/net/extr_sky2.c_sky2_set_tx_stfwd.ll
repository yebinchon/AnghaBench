; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_set_tx_stfwd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_set_tx_stfwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i64, %struct.net_device** }
%struct.net_device = type { i64, i32 }

@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_REV_YU_EX_A0 = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE_P = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_SUPR = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@TX_JUMBO_DIS = common dso_local global i32 0, align 4
@TX_STFW_ENA = common dso_local global i32 0, align 4
@TX_JUMBO_ENA = common dso_local global i32 0, align 4
@TX_GMF_AE_THR = common dso_local global i32 0, align 4
@ECU_JUMBO_WM = common dso_local global i32 0, align 4
@ECU_AE_THR = common dso_local global i32 0, align 4
@TX_STFW_DIS = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_ALL_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_set_tx_stfwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_set_tx_stfwd(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %7 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %6, i32 0, i32 2
  %8 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.net_device*, %struct.net_device** %8, i64 %10
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %14 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %20 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHIP_REV_YU_EX_A0, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %26 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %32 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30, %24, %18
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ETH_DATA_LEN, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %46 = call i32 @SK_REG(i32 %44, i32 %45)
  %47 = load i32, i32* @TX_JUMBO_DIS, align 4
  %48 = load i32, i32* @TX_STFW_ENA, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @sky2_write32(%struct.sky2_hw* %43, i32 %46, i32 %49)
  br label %60

51:                                               ; preds = %36
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %55 = call i32 @SK_REG(i32 %53, i32 %54)
  %56 = load i32, i32* @TX_JUMBO_ENA, align 4
  %57 = load i32, i32* @TX_STFW_ENA, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @sky2_write32(%struct.sky2_hw* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  br label %101

61:                                               ; preds = %30
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ETH_DATA_LEN, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %71 = call i32 @SK_REG(i32 %69, i32 %70)
  %72 = load i32, i32* @TX_STFW_ENA, align 4
  %73 = call i32 @sky2_write32(%struct.sky2_hw* %68, i32 %71, i32 %72)
  br label %100

74:                                               ; preds = %61
  %75 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @TX_GMF_AE_THR, align 4
  %78 = call i32 @SK_REG(i32 %76, i32 %77)
  %79 = load i32, i32* @ECU_JUMBO_WM, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* @ECU_AE_THR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @sky2_write32(%struct.sky2_hw* %75, i32 %78, i32 %82)
  %84 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %87 = call i32 @SK_REG(i32 %85, i32 %86)
  %88 = load i32, i32* @TX_STFW_DIS, align 4
  %89 = call i32 @sky2_write32(%struct.sky2_hw* %84, i32 %87, i32 %88)
  %90 = load i32, i32* @NETIF_F_TSO, align 4
  %91 = load i32, i32* @NETIF_F_SG, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NETIF_F_ALL_CSUM, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %74, %67
  br label %101

101:                                              ; preds = %100, %60
  ret void
}

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
