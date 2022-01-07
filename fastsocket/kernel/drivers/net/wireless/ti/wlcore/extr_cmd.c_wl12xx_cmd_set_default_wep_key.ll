; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_set_default_wep_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_set_default_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl1271_cmd_set_keys = type { i32, i32, i32, i8*, i8* }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cmd set_default_wep_key %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WEP_DEFAULT_LID_TYPE = common dso_local global i32 0, align 4
@KEY_SET_ID = common dso_local global i32 0, align 4
@KEY_WEP = common dso_local global i32 0, align 4
@CMD_SET_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cmd set_default_wep_key failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_set_default_wep_key(%struct.wl1271* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl1271_cmd_set_keys*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_CMD, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl1271_cmd_set_keys* @kzalloc(i32 32, i32 %12)
  store %struct.wl1271_cmd_set_keys* %13, %struct.wl1271_cmd_set_keys** %7, align 8
  %14 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %15 = icmp ne %struct.wl1271_cmd_set_keys* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %22 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %25 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @WEP_DEFAULT_LID_TYPE, align 4
  %27 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %28 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @KEY_SET_ID, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %32 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @KEY_WEP, align 4
  %34 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %35 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %37 = load i32, i32* @CMD_SET_KEYS, align 4
  %38 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %39 = call i32 @wl1271_cmd_send(%struct.wl1271* %36, i32 %37, %struct.wl1271_cmd_set_keys* %38, i32 32, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wl1271_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %46

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45, %42, %16
  %47 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %7, align 8
  %48 = call i32 @kfree(%struct.wl1271_cmd_set_keys* %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @wl1271_debug(i32, i8*, i8*) #1

declare dso_local %struct.wl1271_cmd_set_keys* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_set_keys*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_set_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
