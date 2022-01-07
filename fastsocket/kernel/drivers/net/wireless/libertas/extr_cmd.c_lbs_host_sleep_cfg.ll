; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_host_sleep_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_host_sleep_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, i32 }
%struct.wol_config = type { i32 }
%struct.cmd_ds_host_sleep = type { %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CMD_ACT_ACTION_NONE = common dso_local global i32 0, align 4
@CMD_802_11_HOST_SLEEP_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set WOL criteria to %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"HOST_SLEEP_CFG failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_host_sleep_cfg(%struct.lbs_private* %0, i64 %1, %struct.wol_config* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wol_config*, align 8
  %7 = alloca %struct.cmd_ds_host_sleep, align 4
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wol_config* %2, %struct.wol_config** %6, align 8
  %9 = call i32 @cpu_to_le16(i32 20)
  %10 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @cpu_to_le32(i64 %12)
  %14 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %24 = icmp ne %struct.wol_config* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 0
  %27 = bitcast %struct.TYPE_4__* %26 to i32*
  %28 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %29 = bitcast %struct.wol_config* %28 to i32*
  %30 = call i32 @memcpy(i32* %27, i32* %29, i32 4)
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @CMD_ACT_ACTION_NONE, align 4
  %33 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %37 = load i32, i32* @CMD_802_11_HOST_SLEEP_CFG, align 4
  %38 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %36, i32 %37, %struct.cmd_ds_host_sleep* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %52 = bitcast %struct.wol_config* %51 to i32*
  %53 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 0
  %54 = bitcast %struct.TYPE_4__* %53 to i32*
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 4)
  br label %56

56:                                               ; preds = %50, %44
  br label %60

57:                                               ; preds = %35
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_host_sleep*) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i64) #1

declare dso_local i32 @lbs_pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
