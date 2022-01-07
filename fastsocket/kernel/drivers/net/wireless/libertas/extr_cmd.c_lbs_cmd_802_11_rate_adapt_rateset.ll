; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_rate_adapt_rateset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_rate_adapt_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i8*, i32 }
%struct.cmd_ds_802_11_rate_adapt_rateset = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_802_11_RATE_ADAPT_RATESET = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cmd_802_11_rate_adapt_rateset(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ds_802_11_rate_adapt_rateset, align 8
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @LBS_DEB_CMD, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %14, %2
  %23 = call i8* @cpu_to_le16(i32 32)
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_rate_adapt_rateset, %struct.cmd_ds_802_11_rate_adapt_rateset* %6, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds %struct.cmd_ds_802_11_rate_adapt_rateset, %struct.cmd_ds_802_11_rate_adapt_rateset* %6, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_rate_adapt_rateset, %struct.cmd_ds_802_11_rate_adapt_rateset* %6, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @lbs_rate_to_fw_bitmap(i32 %36, i32 %39)
  %41 = getelementptr inbounds %struct.cmd_ds_802_11_rate_adapt_rateset, %struct.cmd_ds_802_11_rate_adapt_rateset* %6, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %43 = load i32, i32* @CMD_802_11_RATE_ADAPT_RATESET, align 4
  %44 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %42, i32 %43, %struct.cmd_ds_802_11_rate_adapt_rateset* %6)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %22
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @CMD_ACT_GET, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cmd_ds_802_11_rate_adapt_rateset, %struct.cmd_ds_802_11_rate_adapt_rateset* %6, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @le16_to_cpu(i8* %53)
  %55 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.cmd_ds_802_11_rate_adapt_rateset, %struct.cmd_ds_802_11_rate_adapt_rateset* %6, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @le16_to_cpu(i8* %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %51, %47, %22
  %64 = load i32, i32* @LBS_DEB_CMD, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @lbs_deb_leave_args(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @lbs_rate_to_fw_bitmap(i32, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_rate_adapt_rateset*) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
