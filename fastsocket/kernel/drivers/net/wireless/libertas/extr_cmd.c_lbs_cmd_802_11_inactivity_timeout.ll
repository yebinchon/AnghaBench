; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_inactivity_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_inactivity_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_inactivity_timeout = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_802_11_INACTIVITY_TIMEOUT = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cmd_802_11_inactivity_timeout(%struct.lbs_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cmd_ds_802_11_inactivity_timeout, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @LBS_DEB_CMD, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load i32, i32* @CMD_802_11_INACTIVITY_TIMEOUT, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.cmd_ds_802_11_inactivity_timeout, %struct.cmd_ds_802_11_inactivity_timeout* %7, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = call i8* @cpu_to_le16(i32 32)
  %16 = getelementptr inbounds %struct.cmd_ds_802_11_inactivity_timeout, %struct.cmd_ds_802_11_inactivity_timeout* %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.cmd_ds_802_11_inactivity_timeout, %struct.cmd_ds_802_11_inactivity_timeout* %7, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CMD_ACT_SET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds %struct.cmd_ds_802_11_inactivity_timeout, %struct.cmd_ds_802_11_inactivity_timeout* %7, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %31

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.cmd_ds_802_11_inactivity_timeout, %struct.cmd_ds_802_11_inactivity_timeout* %7, i32 0, i32 0
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %33 = load i32, i32* @CMD_802_11_INACTIVITY_TIMEOUT, align 4
  %34 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %32, i32 %33, %struct.cmd_ds_802_11_inactivity_timeout* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cmd_ds_802_11_inactivity_timeout, %struct.cmd_ds_802_11_inactivity_timeout* %7, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @le16_to_cpu(i8* %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* @LBS_DEB_CMD, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @lbs_deb_leave_args(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_inactivity_timeout*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
