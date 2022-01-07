; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_pcs_speed_and_duplex_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_pcs_speed_and_duplex_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i64 }

@E1000_PCS_LSTAT = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_LINK_OK = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_SYNK_OK = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@E1000_PCS_LSTS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@E1000_PCS_LSTS_DUPLEX_FULL = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@HALF_DUPLEX = common dso_local global i64 0, align 8
@e1000_i354 = common dso_local global i64 0, align 8
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU = common dso_local global i32 0, align 4
@E1000_STATUS_2P5_SKU_OVER = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"2500 Mbs, \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i64*)* @igb_get_pcs_speed_and_duplex_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_pcs_speed_and_duplex_82575(%struct.e1000_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.e1000_mac_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_mac_info* %11, %struct.e1000_mac_info** %7, align 8
  %12 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %13 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @E1000_PCS_LSTAT, align 4
  %17 = call i32 @rd32(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @E1000_PCS_LSTS_LINK_OK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %87

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @E1000_PCS_LSTS_SYNK_OK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %87

27:                                               ; preds = %22
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @E1000_PCS_LSTS_SPEED_1000, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i64, i64* @SPEED_1000, align 8
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  br label %49

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @E1000_PCS_LSTS_SPEED_100, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @SPEED_100, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i64, i64* @SPEED_10, align 8
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @E1000_PCS_LSTS_DUPLEX_FULL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @FULL_DUPLEX, align 8
  %56 = load i64*, i64** %6, align 8
  store i64 %55, i64* %56, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load i64, i64* @HALF_DUPLEX, align 8
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %7, align 8
  %62 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @e1000_i354, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32, i32* @E1000_STATUS, align 4
  %68 = call i32 @rd32(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @E1000_STATUS_2P5_SKU, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @E1000_STATUS_2P5_SKU_OVER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* @SPEED_2500, align 8
  %80 = load i64*, i64** %5, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @FULL_DUPLEX, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  %83 = call i32 @hw_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %78, %73, %66
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %22, %3
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
