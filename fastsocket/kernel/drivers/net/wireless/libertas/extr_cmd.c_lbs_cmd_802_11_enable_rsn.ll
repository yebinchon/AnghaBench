; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_enable_rsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_enable_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_enable_rsn = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_ENABLE_RSN = common dso_local global i32 0, align 4
@CMD_DISABLE_RSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ENABLE_RSN: %d\0A\00", align 1
@CMD_802_11_ENABLE_RSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cmd_802_11_enable_rsn(%struct.lbs_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cmd_ds_802_11_enable_rsn, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @LBS_DEB_CMD, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = call i8* @cpu_to_le16(i32 24)
  %12 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %7, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CMD_ACT_GET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %7, i32 0, i32 0
  store i8* null, i8** %21, align 8
  br label %38

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @CMD_ENABLE_RSN, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %7, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @CMD_DISABLE_RSN, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %7, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %40 = load i32, i32* @CMD_802_11_ENABLE_RSN, align 4
  %41 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %39, i32 %40, %struct.cmd_ds_802_11_enable_rsn* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CMD_ACT_GET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, %struct.cmd_ds_802_11_enable_rsn* %7, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @le16_to_cpu(i8* %50)
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %44, %38
  %54 = load i32, i32* @LBS_DEB_CMD, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @lbs_deb_leave_args(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_enable_rsn*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
