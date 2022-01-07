; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_ethtool.c_lbs_ethtool_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_ethtool.c_lbs_ethtool_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.ethtool_eeprom = type { i64, i64 }
%struct.cmd_ds_802_11_eeprom_access = type { i32, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_ETHTOOL = common dso_local global i32 0, align 4
@LBS_EEPROM_LEN = common dso_local global i64 0, align 8
@LBS_EEPROM_READ_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_802_11_EEPROM_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @lbs_ethtool_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ethtool_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca %struct.cmd_ds_802_11_eeprom_access, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  store %struct.lbs_private* %12, %struct.lbs_private** %7, align 8
  %13 = load i32, i32* @LBS_DEB_ETHTOOL, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i64, i64* @LBS_EEPROM_LEN, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @LBS_EEPROM_READ_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %76

34:                                               ; preds = %24
  %35 = load i32, i32* @LBS_EEPROM_READ_LEN, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 40, %36
  %38 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @CMD_ACT_GET, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %62 = load i32, i32* @CMD_802_11_EEPROM_ACCESS, align 4
  %63 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %61, i32 %62, %struct.cmd_ds_802_11_eeprom_access* %8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %34
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds %struct.cmd_ds_802_11_eeprom_access, %struct.cmd_ds_802_11_eeprom_access* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(i32* %67, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %34
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i32, i32* @LBS_DEB_ETHTOOL, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @lbs_deb_leave_args(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_eeprom_access*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
