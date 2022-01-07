; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_mesh_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_mesh_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_mesh_access = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"action %d\00", align 1
@CMD_MESH_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_mesh_access(%struct.lbs_private* %0, i32 %1, %struct.cmd_ds_mesh_access* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ds_mesh_access*, align 8
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmd_ds_mesh_access* %2, %struct.cmd_ds_mesh_access** %6, align 8
  %8 = load i32, i32* @LBS_DEB_CMD, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @lbs_deb_enter_args(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @CMD_MESH_ACCESS, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.cmd_ds_mesh_access*, %struct.cmd_ds_mesh_access** %6, align 8
  %14 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = call i8* @cpu_to_le16(i32 32)
  %17 = load %struct.cmd_ds_mesh_access*, %struct.cmd_ds_mesh_access** %6, align 8
  %18 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.cmd_ds_mesh_access*, %struct.cmd_ds_mesh_access** %6, align 8
  %21 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.cmd_ds_mesh_access*, %struct.cmd_ds_mesh_access** %6, align 8
  %26 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %28 = load i32, i32* @CMD_MESH_ACCESS, align 4
  %29 = load %struct.cmd_ds_mesh_access*, %struct.cmd_ds_mesh_access** %6, align 8
  %30 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %27, i32 %28, %struct.cmd_ds_mesh_access* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @LBS_DEB_CMD, align 4
  %32 = call i32 @lbs_deb_leave(i32 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @lbs_deb_enter_args(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_mesh_access*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
