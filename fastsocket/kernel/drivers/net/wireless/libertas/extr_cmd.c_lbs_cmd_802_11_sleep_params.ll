; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_sleep_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_sleep_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.sleep_params = type { i32, i32, i32, i32, i32, i32 }
%struct.cmd_ds_802_11_sleep_params = type { i8*, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_802_11_SLEEP_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"error 0x%x, offset 0x%x, stabletime 0x%x, calcontrol 0x%x extsleepclk 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cmd_802_11_sleep_params(%struct.lbs_private* %0, i32 %1, %struct.sleep_params* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sleep_params*, align 8
  %7 = alloca %struct.cmd_ds_802_11_sleep_params, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sleep_params* %2, %struct.sleep_params** %6, align 8
  %9 = load i32, i32* @LBS_DEB_CMD, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CMD_ACT_GET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @memset(%struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 56)
  br label %45

16:                                               ; preds = %3
  %17 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %18 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %23 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %28 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %33 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %37 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %41 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %16, %14
  %46 = call i8* @cpu_to_le16(i32 56)
  %47 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 6
  store i8* %50, i8** %51, align 8
  %52 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %53 = load i32, i32* @CMD_802_11_SLEEP_PARAMS, align 4
  %54 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %52, i32 %53, %struct.cmd_ds_802_11_sleep_params* %7)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %104, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @le16_to_cpu(i8* %59)
  %61 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @le16_to_cpu(i8* %62)
  %64 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @le16_to_cpu(i8* %65)
  %67 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %63, i8* %66, i32 %68, i32 %70)
  %72 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @le16_to_cpu(i8* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %77 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @le16_to_cpu(i8* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %83 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @le16_to_cpu(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %89 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %93 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %97 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @le16_to_cpu(i8* %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %103 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %57, %45
  %105 = load i32, i32* @LBS_DEB_CMD, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @lbs_deb_leave_args(i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_sleep_params*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_sleep_params*) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
