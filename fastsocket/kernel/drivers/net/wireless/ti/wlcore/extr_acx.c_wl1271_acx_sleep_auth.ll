; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_sleep_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_sleep_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i8* }
%struct.acx_sleep_auth = type { i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"acx sleep auth %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_SLEEP_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not configure sleep_auth to %d: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_sleep_auth(%struct.wl1271* %0, i8* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acx_sleep_auth*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.acx_sleep_auth* @kzalloc(i32 8, i32 %10)
  store %struct.acx_sleep_auth* %11, %struct.acx_sleep_auth** %5, align 8
  %12 = load %struct.acx_sleep_auth*, %struct.acx_sleep_auth** %5, align 8
  %13 = icmp ne %struct.acx_sleep_auth* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.acx_sleep_auth*, %struct.acx_sleep_auth** %5, align 8
  %20 = getelementptr inbounds %struct.acx_sleep_auth, %struct.acx_sleep_auth* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %22 = load i32, i32* @ACX_SLEEP_AUTH, align 4
  %23 = load %struct.acx_sleep_auth*, %struct.acx_sleep_auth** %5, align 8
  %24 = call i32 @wl1271_cmd_configure(%struct.wl1271* %21, i32 %22, %struct.acx_sleep_auth* %23, i32 8)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @wl1271_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  br label %35

31:                                               ; preds = %17
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %27, %14
  %36 = load %struct.acx_sleep_auth*, %struct.acx_sleep_auth** %5, align 8
  %37 = call i32 @kfree(%struct.acx_sleep_auth* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @wl1271_debug(i32, i8*, i8*) #1

declare dso_local %struct.acx_sleep_auth* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_sleep_auth*, i32) #1

declare dso_local i32 @wl1271_error(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_sleep_auth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
