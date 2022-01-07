; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_bt_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_bt_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ds_command = type { i64, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cmd_ds_bt_access }
%struct.cmd_ds_bt_access = type { i8*, i32, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"action %d\00", align 1
@CMD_BT_ACCESS = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@LBS_DEB_MESH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"BT_ADD: blinded MAC addr\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"BT_DEL: blinded MAC addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_ds_command*, i32, i8*)* @lbs_cmd_bt_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cmd_bt_access(%struct.cmd_ds_command* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_ds_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd_ds_bt_access*, align 8
  store %struct.cmd_ds_command* %0, %struct.cmd_ds_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %9 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.cmd_ds_bt_access* %10, %struct.cmd_ds_bt_access** %7, align 8
  %11 = load i32, i32* @LBS_DEB_CMD, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @lbs_deb_enter_args(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @CMD_BT_ACCESS, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %17 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @S_DS_GEN, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 24, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %24 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %26 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %30 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %74 [
    i32 133, label %32
    i32 132, label %45
    i32 130, label %58
    i32 129, label %65
    i32 128, label %66
    i32 131, label %73
  ]

32:                                               ; preds = %3
  %33 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %34 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = mul nsw i32 2, %37
  %39 = call i32 @memcpy(i32 %35, i8* %36, i32 %38)
  %40 = load i32, i32* @LBS_DEB_MESH, align 4
  %41 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %42 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lbs_deb_hex(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 6)
  br label %75

45:                                               ; preds = %3
  %46 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %47 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = mul nsw i32 1, %50
  %52 = call i32 @memcpy(i32 %48, i8* %49, i32 %51)
  %53 = load i32, i32* @LBS_DEB_MESH, align 4
  %54 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %55 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @lbs_deb_hex(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 6)
  br label %75

58:                                               ; preds = %3
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %64 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %75

65:                                               ; preds = %3
  br label %75

66:                                               ; preds = %3
  %67 = load i8*, i8** %6, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.cmd_ds_bt_access*, %struct.cmd_ds_bt_access** %7, align 8
  %72 = getelementptr inbounds %struct.cmd_ds_bt_access, %struct.cmd_ds_bt_access* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %75

73:                                               ; preds = %3
  br label %75

74:                                               ; preds = %3
  br label %75

75:                                               ; preds = %74, %73, %66, %65, %58, %45, %32
  %76 = load i32, i32* @LBS_DEB_CMD, align 4
  %77 = call i32 @lbs_deb_leave(i32 %76)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter_args(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
