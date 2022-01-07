; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_vbm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_vbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_cmd_vbm_update = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i32, i8* }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cmd vbm\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PARTIAL_VBM_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cmd vbm len is %d B, truncating to %d\00", align 1
@CMD_VBM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"VBM command failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_vbm(%struct.wl1251* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wl1251_cmd_vbm_update*, align 8
  %12 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @DEBUG_CMD, align 4
  %14 = call i32 @wl1251_debug(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wl1251_cmd_vbm_update* @kzalloc(i32 40, i32 %15)
  store %struct.wl1251_cmd_vbm_update* %16, %struct.wl1251_cmd_vbm_update** %11, align 8
  %17 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %18 = icmp ne %struct.wl1251_cmd_vbm_update* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %67

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %25 = getelementptr inbounds %struct.wl1251_cmd_vbm_update, %struct.wl1251_cmd_vbm_update* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PARTIAL_VBM_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PARTIAL_VBM_MAX, align 4
  %33 = call i32 @wl1251_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @PARTIAL_VBM_MAX, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %37 = getelementptr inbounds %struct.wl1251_cmd_vbm_update, %struct.wl1251_cmd_vbm_update* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcpy(i32 %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %45 = getelementptr inbounds %struct.wl1251_cmd_vbm_update, %struct.wl1251_cmd_vbm_update* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %51 = getelementptr inbounds %struct.wl1251_cmd_vbm_update, %struct.wl1251_cmd_vbm_update* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 5
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %57 = getelementptr inbounds %struct.wl1251_cmd_vbm_update, %struct.wl1251_cmd_vbm_update* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %59 = load i32, i32* @CMD_VBM, align 4
  %60 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %61 = call i32 @wl1251_cmd_send(%struct.wl1251* %58, i32 %59, %struct.wl1251_cmd_vbm_update* %60, i32 40)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %35
  %65 = call i32 @wl1251_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %67

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66, %64, %19
  %68 = load %struct.wl1251_cmd_vbm_update*, %struct.wl1251_cmd_vbm_update** %11, align 8
  %69 = call i32 @kfree(%struct.wl1251_cmd_vbm_update* %68)
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.wl1251_cmd_vbm_update* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.wl1251_cmd_vbm_update*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl1251_cmd_vbm_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
