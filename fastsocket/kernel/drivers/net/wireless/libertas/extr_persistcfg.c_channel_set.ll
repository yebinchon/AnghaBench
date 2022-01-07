; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_persistcfg.c_channel_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_persistcfg.c_channel_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lbs_private = type { i32 }
%struct.cmd_ds_mesh_config = type { i8*, i32* }
%struct.TYPE_2__ = type { %struct.lbs_private* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_ACT_MESH_CONFIG_SET = common dso_local global i32 0, align 4
@CMD_TYPE_MESH_SET_DEF_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @channel_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.cmd_ds_mesh_config, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.TYPE_2__* @to_net_dev(%struct.device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.lbs_private*, %struct.lbs_private** %16, align 8
  store %struct.lbs_private* %17, %struct.lbs_private** %10, align 8
  %18 = call i32 @memset(%struct.cmd_ds_mesh_config* %11, i32 0, i32 16)
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 11
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %11, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = bitcast i32* %37 to i8**
  store i8* %34, i8** %38, align 8
  %39 = call i8* @cpu_to_le16(i32 4)
  %40 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %11, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %42 = load i32, i32* @CMD_ACT_MESH_CONFIG_SET, align 4
  %43 = load i32, i32* @CMD_TYPE_MESH_SET_DEF_CHANNEL, align 4
  %44 = call i32 @lbs_mesh_config_send(%struct.lbs_private* %41, %struct.cmd_ds_mesh_config* %11, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %32
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %47, %29
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_2__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @memset(%struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
