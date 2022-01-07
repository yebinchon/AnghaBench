; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_fw_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_revision = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"acx fw rev\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FW_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ACX_FW_REV interrogate failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_fw_version(%struct.wl1251* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acx_revision*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1251_debug(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acx_revision* @kzalloc(i32 4, i32 %11)
  store %struct.acx_revision* %12, %struct.acx_revision** %7, align 8
  %13 = load %struct.acx_revision*, %struct.acx_revision** %7, align 8
  %14 = icmp ne %struct.acx_revision* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %20 = load i32, i32* @ACX_FW_REV, align 4
  %21 = load %struct.acx_revision*, %struct.acx_revision** %7, align 8
  %22 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %19, i32 %20, %struct.acx_revision* %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @wl1251_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %41

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.acx_revision*, %struct.acx_revision** %7, align 8
  %30 = getelementptr inbounds %struct.acx_revision, %struct.acx_revision* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @min(i64 %32, i32 4)
  %34 = call i32 @strncpy(i8* %28, i32 %31, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @min(i64 %36, i32 4)
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %27, %25, %15
  %42 = load %struct.acx_revision*, %struct.acx_revision** %7, align 8
  %43 = call i32 @kfree(%struct.acx_revision* %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_revision* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_revision*, i32) #1

declare dso_local i32 @wl1251_warning(i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @kfree(%struct.acx_revision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
