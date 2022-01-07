; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_ps_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_ps_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cmd_ds_802_11_ps_mode }
%struct.cmd_ds_802_11_ps_mode = type { i8*, i32, i32, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_802_11_PS_MODE = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PS command:SubCode- Enter PS\0A\00", align 1
@MRVDRV_DEFAULT_MULTIPLE_DTIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PS command:SubCode- Exit PS\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"PS command: SubCode- sleep confirm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_ds_command*, i32)* @lbs_cmd_802_11_ps_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cmd_802_11_ps_mode(%struct.cmd_ds_command* %0, i32 %1) #0 {
  %3 = alloca %struct.cmd_ds_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_ds_802_11_ps_mode*, align 8
  store %struct.cmd_ds_command* %0, %struct.cmd_ds_command** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %3, align 8
  %7 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.cmd_ds_802_11_ps_mode* %8, %struct.cmd_ds_802_11_ps_mode** %5, align 8
  %9 = load i32, i32* @LBS_DEB_CMD, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load i32, i32* @CMD_802_11_PS_MODE, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %3, align 8
  %14 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @S_DS_GEN, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 24, %16
  %18 = trunc i64 %17 to i32
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %3, align 8
  %21 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %5, align 8
  %25 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %5, align 8
  %27 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %43 [
    i32 130, label %29
    i32 129, label %39
    i32 128, label %41
  ]

29:                                               ; preds = %2
  %30 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %5, align 8
  %32 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %5, align 8
  %34 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @MRVDRV_DEFAULT_MULTIPLE_DTIM, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.cmd_ds_802_11_ps_mode*, %struct.cmd_ds_802_11_ps_mode** %5, align 8
  %38 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %44

39:                                               ; preds = %2
  %40 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %44

41:                                               ; preds = %2
  %42 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %41, %39, %29
  %45 = load i32, i32* @LBS_DEB_CMD, align 4
  %46 = call i32 @lbs_deb_leave(i32 %45)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
