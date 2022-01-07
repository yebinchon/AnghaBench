; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_persistcfg.c_mesh_get_default_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_persistcfg.c_mesh_get_default_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mrvl_mesh_defaults = type { i32 }
%struct.lbs_private = type { i32 }
%struct.cmd_ds_mesh_config = type { i32* }
%struct.TYPE_2__ = type { %struct.lbs_private* }

@CMD_ACT_MESH_CONFIG_GET = common dso_local global i32 0, align 4
@CMD_TYPE_MESH_GET_DEFAULTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mrvl_mesh_defaults*)* @mesh_get_default_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_get_default_parameters(%struct.device* %0, %struct.mrvl_mesh_defaults* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mrvl_mesh_defaults*, align 8
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca %struct.cmd_ds_mesh_config, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mrvl_mesh_defaults* %1, %struct.mrvl_mesh_defaults** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.TYPE_2__* @to_net_dev(%struct.device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  store %struct.lbs_private* %12, %struct.lbs_private** %6, align 8
  %13 = call i32 @memset(%struct.cmd_ds_mesh_config* %7, i32 0, i32 8)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %15 = load i32, i32* @CMD_ACT_MESH_CONFIG_GET, align 4
  %16 = load i32, i32* @CMD_TYPE_MESH_GET_DEFAULTS, align 4
  %17 = call i32 @lbs_mesh_config_send(%struct.lbs_private* %14, %struct.cmd_ds_mesh_config* %7, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.mrvl_mesh_defaults*, %struct.mrvl_mesh_defaults** %5, align 8
  %25 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %7, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @memcpy(%struct.mrvl_mesh_defaults* %24, i32* %27, i32 4)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_2__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @memset(%struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.mrvl_mesh_defaults*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
