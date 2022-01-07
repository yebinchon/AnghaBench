; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_data_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_set_data_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64 }
%struct.cmd_ds_802_11_data_rate = type { i64*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_SET_TX_FIX_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DATA_RATE: invalid requested rate of 0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DATA_RATE: set fixed 0x%02X\0A\00", align 1
@CMD_ACT_SET_TX_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"DATA_RATE: setting auto\0A\00", align 1
@CMD_802_11_DATA_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DATA_RATE_RESP\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"DATA_RATE: current rate is 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_data_rate(%struct.lbs_private* %0, i64 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cmd_ds_802_11_data_rate, align 8
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @LBS_DEB_CMD, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = call i32 @memset(%struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 24)
  %10 = call i8* @cpu_to_le16(i32 24)
  %11 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load i32, i32* @CMD_ACT_SET_TX_FIX_RATE, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @lbs_data_rate_to_fw_index(i64 %19)
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i64, i64* %4, align 8
  %31 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i32 0, i32* %6, align 4
  br label %65

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %43

38:                                               ; preds = %2
  %39 = load i32, i32* @CMD_ACT_SET_TX_AUTO, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %45 = load i32, i32* @CMD_802_11_DATA_RATE, align 4
  %46 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %44, i32 %45, %struct.cmd_ds_802_11_data_rate* %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %65

50:                                               ; preds = %43
  %51 = load i32, i32* @LBS_DEB_CMD, align 4
  %52 = bitcast %struct.cmd_ds_802_11_data_rate* %5 to i64*
  %53 = call i32 @lbs_deb_hex(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64* %52, i32 24)
  %54 = getelementptr inbounds %struct.cmd_ds_802_11_data_rate, %struct.cmd_ds_802_11_data_rate* %5, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @lbs_fw_index_to_data_rate(i64 %57)
  %59 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %50, %49, %29
  %66 = load i32, i32* @LBS_DEB_CMD, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @lbs_deb_leave_args(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_data_rate*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @lbs_data_rate_to_fw_index(i64) #1

declare dso_local i32 @lbs_deb_cmd(i8*, ...) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_data_rate*) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i64*, i32) #1

declare dso_local i64 @lbs_fw_index_to_data_rate(i64) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
