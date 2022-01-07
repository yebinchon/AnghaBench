; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_cmd_set_drv_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_cmd_set_drv_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@_QLCNIC_LINUX_MAJOR = common dso_local global i32 0, align 4
@_QLCNIC_LINUX_MINOR = common dso_local global i32 0, align 4
@_QLCNIC_LINUX_SUBVERSION = common dso_local global i32 0, align 4
@QLCNIC_CMD_SET_DRV_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to set driver version in firmware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_fw_cmd_set_drv_version(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_cmd_args, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 12)
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %13 = load i32, i32* @_QLCNIC_LINUX_MAJOR, align 4
  %14 = load i32, i32* @_QLCNIC_LINUX_MINOR, align 4
  %15 = load i32, i32* @_QLCNIC_LINUX_SUBVERSION, align 4
  %16 = call i32 @snprintf(i8* %12, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = load i32, i32* @QLCNIC_CMD_SET_DRV_VER, align 4
  %19 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %4, %struct.qlcnic_adapter* %17, i32 %18)
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %21 = call i32 @memcpy(i8** %5, i8* %20, i32 8)
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = call i32 @memcpy(i8** %6, i8* %23, i32 8)
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  %27 = call i32 @memcpy(i8** %7, i8* %26, i32 8)
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  store i8* %33, i8** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  store i8* %38, i8** %42, align 8
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %43, %struct.qlcnic_cmd_args* %4)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %1
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
