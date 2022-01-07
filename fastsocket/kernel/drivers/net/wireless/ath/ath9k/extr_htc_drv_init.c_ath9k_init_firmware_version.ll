; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_firmware_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_fw_version = type { i32, i32 }

@WMI_GET_FW_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ath9k_htc: FW Version: %d.%d\0A\00", align 1
@MAJOR_VERSION_REQ = common dso_local global i32 0, align 4
@MINOR_VERSION_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"ath9k_htc: Please upgrade to FW version %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*)* @ath9k_init_firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_firmware_version(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.wmi_fw_version, align 4
  %6 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 3
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %4, align 8
  %10 = call i32 @memset(%struct.wmi_fw_version* %5, i32 0, i32 8)
  %11 = load i32, i32* @WMI_GET_FW_VERSION, align 4
  %12 = call i32 @WMI_CMD(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.wmi_fw_version, %struct.wmi_fw_version* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @be16_to_cpu(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.wmi_fw_version, %struct.wmi_fw_version* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @be16_to_cpu(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MAJOR_VERSION_REQ, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %18
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MINOR_VERSION_REQ, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58, %18
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MAJOR_VERSION_REQ, align 4
  %69 = load i32, i32* @MINOR_VERSION_REQ, align 4
  %70 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %64, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.wmi_fw_version*, i32, i32) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
