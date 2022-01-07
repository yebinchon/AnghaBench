; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_persistcfg.c_protocol_id_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_persistcfg.c_protocol_id_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cmd_ds_mesh_config = type { i32*, i32 }
%struct.mrvl_mesh_defaults = type { i32 }
%struct.mrvl_meshie = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lbs_private = type { i32 }
%struct.TYPE_4__ = type { %struct.lbs_private* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_ACT_MESH_CONFIG_SET = common dso_local global i32 0, align 4
@CMD_TYPE_MESH_SET_MESH_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @protocol_id_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protocol_id_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cmd_ds_mesh_config, align 8
  %11 = alloca %struct.mrvl_mesh_defaults, align 4
  %12 = alloca %struct.mrvl_meshie*, align 8
  %13 = alloca %struct.lbs_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.TYPE_4__* @to_net_dev(%struct.device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.lbs_private*, %struct.lbs_private** %18, align 8
  store %struct.lbs_private* %19, %struct.lbs_private** %13, align 8
  %20 = call i32 @memset(%struct.cmd_ds_mesh_config* %10, i32 0, i32 16)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sgt i32 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @mesh_get_default_parameters(%struct.device* %32, %struct.mrvl_mesh_defaults* %11)
  store i32 %33, i32* %15, align 4
  %34 = call i32 @cpu_to_le16(i32 4)
  %35 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %10, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = bitcast i32* %38 to %struct.mrvl_meshie*
  store %struct.mrvl_meshie* %39, %struct.mrvl_meshie** %12, align 8
  %40 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %12, align 8
  %41 = getelementptr inbounds %struct.mrvl_mesh_defaults, %struct.mrvl_mesh_defaults* %11, i32 0, i32 0
  %42 = call i32 @memcpy(%struct.mrvl_meshie* %40, i32* %41, i32 4)
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %12, align 8
  %45 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  %48 = load i32, i32* @CMD_ACT_MESH_CONFIG_SET, align 4
  %49 = load i32, i32* @CMD_TYPE_MESH_SET_MESH_IE, align 4
  %50 = call i32 @lbs_mesh_config_send(%struct.lbs_private* %47, %struct.cmd_ds_mesh_config* %10, i32 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %31
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %31
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %28
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @memset(%struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mesh_get_default_parameters(%struct.device*, %struct.mrvl_mesh_defaults*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.mrvl_meshie*, i32*, i32) #1

declare dso_local i32 @lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
