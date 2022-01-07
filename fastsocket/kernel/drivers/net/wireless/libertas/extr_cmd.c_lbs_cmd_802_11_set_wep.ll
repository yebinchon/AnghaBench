; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_set_wep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_set_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.assoc_request = type { i32, %struct.enc_key* }
%struct.enc_key = type { i32, i32 }
%struct.cmd_ds_802_11_set_wep = type { i8*, i32*, i32*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_802_11_SET_WEP = common dso_local global i32 0, align 4
@CMD_ACT_ADD = common dso_local global i32 0, align 4
@CMD_WEP_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@CMD_TYPE_WEP_40_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SET_WEP: add key %d (40 bit)\0A\00", align 1
@CMD_TYPE_WEP_104_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SET_WEP: add key %d (104 bit)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"SET_WEP: invalid key %d, length %d\0A\00", align 1
@CMD_ACT_REMOVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SET_WEP: remove key %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cmd_802_11_set_wep(%struct.lbs_private* %0, i32 %1, %struct.assoc_request* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.assoc_request*, align 8
  %7 = alloca %struct.cmd_ds_802_11_set_wep, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.enc_key*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.assoc_request* %2, %struct.assoc_request** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @LBS_DEB_CMD, align 4
  %12 = call i32 @lbs_deb_enter(i32 %11)
  %13 = call i32 @memset(%struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 48)
  %14 = load i32, i32* @CMD_802_11_SET_WEP, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = call i8* @cpu_to_le16(i32 48)
  %19 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CMD_ACT_ADD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %3
  %28 = load %struct.assoc_request*, %struct.assoc_request** %6, align 8
  %29 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CMD_WEP_KEY_INDEX_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %100, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %103

38:                                               ; preds = %35
  %39 = load %struct.assoc_request*, %struct.assoc_request** %6, align 8
  %40 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %39, i32 0, i32 1
  %41 = load %struct.enc_key*, %struct.enc_key** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %41, i64 %43
  store %struct.enc_key* %44, %struct.enc_key** %10, align 8
  %45 = load %struct.enc_key*, %struct.enc_key** %10, align 8
  %46 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %93 [
    i32 128, label %48
    i32 129, label %70
    i32 0, label %92
  ]

48:                                               ; preds = %38
  %49 = load i32, i32* @CMD_TYPE_WEP_40_BIT, align 4
  %50 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.enc_key*, %struct.enc_key** %10, align 8
  %62 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.enc_key*, %struct.enc_key** %10, align 8
  %65 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memmove(i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i8*, i32, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %99

70:                                               ; preds = %38
  %71 = load i32, i32* @CMD_TYPE_WEP_104_BIT, align 4
  %72 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.enc_key*, %struct.enc_key** %10, align 8
  %84 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.enc_key*, %struct.enc_key** %10, align 8
  %87 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memmove(i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, i32, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %99

92:                                               ; preds = %38
  br label %99

93:                                               ; preds = %38
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.enc_key*, %struct.enc_key** %10, align 8
  %96 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %97)
  store i32 -1, i32* %8, align 4
  br label %125

99:                                               ; preds = %92, %70, %48
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %35

103:                                              ; preds = %35
  br label %121

104:                                              ; preds = %3
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @CMD_ACT_REMOVE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %110 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CMD_WEP_KEY_INDEX_MASK, align 4
  %113 = and i32 %111, %112
  %114 = call i8* @cpu_to_le16(i32 %113)
  %115 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %7, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %117 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, i32, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %108, %104
  br label %121

121:                                              ; preds = %120, %103
  %122 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %123 = load i32, i32* @CMD_802_11_SET_WEP, align 4
  %124 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %122, i32 %123, %struct.cmd_ds_802_11_set_wep* %7)
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %93
  %126 = load i32, i32* @LBS_DEB_CMD, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @lbs_deb_leave_args(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_set_wep*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32, ...) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_set_wep*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
