; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_prb_rsp_limit_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_prb_rsp_limit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lbs_private = type { i32 }
%struct.cmd_ds_mesh_access = type { i8** }
%struct.TYPE_2__ = type { %struct.lbs_private* }

@CMD_ACT_SET = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@CMD_ACT_MESH_SET_GET_PRB_RSP_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lbs_prb_rsp_limit_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_prb_rsp_limit_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.cmd_ds_mesh_access, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.TYPE_2__* @to_net_dev(%struct.device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.lbs_private*, %struct.lbs_private** %16, align 8
  store %struct.lbs_private* %17, %struct.lbs_private** %10, align 8
  %18 = call i32 @memset(%struct.cmd_ds_mesh_access* %11, i32 0, i32 8)
  %19 = load i64, i64* @CMD_ACT_SET, align 8
  %20 = call i8* @cpu_to_le32(i64 %19)
  %21 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %11, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strict_strtoul(i8* %24, i32 10, i64* %13)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %52

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = icmp ugt i64 %31, 15
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %52

36:                                               ; preds = %30
  %37 = load i64, i64* %13, align 8
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = getelementptr inbounds %struct.cmd_ds_mesh_access, %struct.cmd_ds_mesh_access* %11, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %43 = load i32, i32* @CMD_ACT_MESH_SET_GET_PRB_RSP_LIMIT, align 4
  %44 = call i32 @lbs_mesh_access(%struct.lbs_private* %42, i32 %43, %struct.cmd_ds_mesh_access* %11)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %36
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %47, %33, %27
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_2__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @memset(%struct.cmd_ds_mesh_access*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @lbs_mesh_access(%struct.lbs_private*, i32, %struct.cmd_ds_mesh_access*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
