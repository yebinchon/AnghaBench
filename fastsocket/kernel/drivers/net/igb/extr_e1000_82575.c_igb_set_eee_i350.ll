; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_eee_i350.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_eee_i350.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@e1000_i350 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_IPCNFG = common dso_local global i32 0, align 4
@E1000_EEER = common dso_local global i32 0, align 4
@E1000_EEE_SU = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_1G_AN = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_100M_AN = common dso_local global i32 0, align 4
@E1000_EEER_TX_LPI_EN = common dso_local global i32 0, align 4
@E1000_EEER_RX_LPI_EN = common dso_local global i32 0, align 4
@E1000_EEER_LPI_FC = common dso_local global i32 0, align 4
@E1000_EEE_SU_LPI_CLK_STP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"LPI Clock Stop Bit should not be set!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_set_eee_i350(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_i350, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_media_type_copper, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  br label %80

21:                                               ; preds = %13
  %22 = load i32, i32* @E1000_IPCNFG, align 4
  %23 = call i32 @rd32(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @E1000_EEER, align 4
  %25 = call i32 @rd32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @E1000_EEE_SU, align 4
  %34 = call i32 @rd32(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %36 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %41 = load i32, i32* @E1000_EEER_RX_LPI_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @E1000_EEER_LPI_FC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @E1000_EEE_SU_LPI_CLK_STP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %32
  br label %69

54:                                               ; preds = %21
  %55 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %56 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %62 = load i32, i32* @E1000_EEER_RX_LPI_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @E1000_EEER_LPI_FC, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %54, %53
  %70 = load i32, i32* @E1000_IPCNFG, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @wr32(i32 %70, i32 %71)
  %73 = load i32, i32* @E1000_EEER, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @wr32(i32 %73, i32 %74)
  %76 = load i32, i32* @E1000_IPCNFG, align 4
  %77 = call i32 @rd32(i32 %76)
  %78 = load i32, i32* @E1000_EEER, align 4
  %79 = call i32 @rd32(i32 %78)
  br label %80

80:                                               ; preds = %69, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
