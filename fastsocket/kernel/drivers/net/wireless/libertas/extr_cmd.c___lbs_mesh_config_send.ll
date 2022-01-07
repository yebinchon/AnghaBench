; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c___lbs_mesh_config_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c___lbs_mesh_config_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64 }
%struct.cmd_ds_mesh_config = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i8* }

@CMD_MESH_CONFIG_OLD = common dso_local global i32 0, align 4
@LBS_DEB_CMD = common dso_local global i32 0, align 4
@MESH_FW_NEW = common dso_local global i64 0, align 8
@CMD_MESH_CONFIG = common dso_local global i32 0, align 4
@MESH_IFACE_ID = common dso_local global i32 0, align 4
@MESH_IFACE_BIT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32)* @__lbs_mesh_config_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lbs_mesh_config_send(%struct.lbs_private* %0, %struct.cmd_ds_mesh_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca %struct.cmd_ds_mesh_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store %struct.cmd_ds_mesh_config* %1, %struct.cmd_ds_mesh_config** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @CMD_MESH_CONFIG_OLD, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @LBS_DEB_CMD, align 4
  %13 = call i32 @lbs_deb_enter(i32 %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MESH_FW_NEW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* @CMD_MESH_CONFIG, align 4
  %21 = load i32, i32* @MESH_IFACE_ID, align 4
  %22 = load i32, i32* @MESH_IFACE_BIT_OFFSET, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %19, %4
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %29 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = call i8* @cpu_to_le16(i32 40)
  %32 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %33 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %36 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %41 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %45 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %49 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %46, i32 %47, %struct.cmd_ds_mesh_config* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @LBS_DEB_CMD, align 4
  %51 = call i32 @lbs_deb_leave(i32 %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_mesh_config*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
