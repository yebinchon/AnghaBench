; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_handle_beacon_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_handle_beacon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i32, i64, i64 }

@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@SHORT_PREAMBLE = common dso_local global i32 0, align 4
@LONG_PREAMBLE = common dso_local global i32 0, align 4
@Local_Mib_Type = common dso_local global i32 0, align 4
@LOCAL_MIB_PREAMBLE_TYPE = common dso_local global i32 0, align 4
@Phy_Mib_Type = common dso_local global i32 0, align 4
@PHY_MIB_CHANNEL_POS = common dso_local global i32 0, align 4
@STATION_STATE_JOINNING = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@BSS_TYPE_INFRASTRUCTURE = common dso_local global i32 0, align 4
@BSS_TYPE_AD_HOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32, i32)* @handle_beacon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_beacon_probe(%struct.atmel_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atmel_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @SHORT_PREAMBLE, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @LONG_PREAMBLE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %8, align 4
  %19 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %20 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %27 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 1, i32* %7, align 4
  %28 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %29 = load i32, i32* @Local_Mib_Type, align 4
  %30 = load i32, i32* @LOCAL_MIB_PREAMBLE_TYPE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @atmel_set_mib8(%struct.atmel_private* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %17
  %34 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %35 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %7, align 4
  %43 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %44 = load i32, i32* @Phy_Mib_Type, align 4
  %45 = load i32, i32* @PHY_MIB_CHANNEL_POS, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @atmel_set_mib8(%struct.atmel_private* %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %33
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %55 = load i32, i32* @STATION_STATE_JOINNING, align 4
  %56 = call i32 @atmel_enter_state(%struct.atmel_private* %54, i32 %55)
  %57 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %58 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IW_MODE_INFRA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %64 = load i32, i32* @BSS_TYPE_INFRASTRUCTURE, align 4
  %65 = call i32 @join(%struct.atmel_private* %63, i32 %64)
  br label %70

66:                                               ; preds = %51
  %67 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %68 = load i32, i32* @BSS_TYPE_AD_HOC, align 4
  %69 = call i32 @join(%struct.atmel_private* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %48
  ret void
}

declare dso_local i32 @atmel_set_mib8(%struct.atmel_private*, i32, i32, i32) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @join(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
