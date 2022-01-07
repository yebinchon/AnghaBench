; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_cmd_role_disable = type { i64 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cmd role disable\00", align 1
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_ROLE_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to initiate cmd role disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_disable(%struct.wl1271* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.wl12xx_cmd_role_disable*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32, i32* @DEBUG_CMD, align 4
  %9 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.wl12xx_cmd_role_disable* @kzalloc(i32 8, i32 %21)
  store %struct.wl12xx_cmd_role_disable* %22, %struct.wl12xx_cmd_role_disable** %6, align 8
  %23 = load %struct.wl12xx_cmd_role_disable*, %struct.wl12xx_cmd_role_disable** %6, align 8
  %24 = icmp ne %struct.wl12xx_cmd_role_disable* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.wl12xx_cmd_role_disable*, %struct.wl12xx_cmd_role_disable** %6, align 8
  %32 = getelementptr inbounds %struct.wl12xx_cmd_role_disable, %struct.wl12xx_cmd_role_disable* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %34 = load i32, i32* @CMD_ROLE_DISABLE, align 4
  %35 = load %struct.wl12xx_cmd_role_disable*, %struct.wl12xx_cmd_role_disable** %6, align 8
  %36 = call i32 @wl1271_cmd_send(%struct.wl1271* %33, i32 %34, %struct.wl12xx_cmd_role_disable* %35, i32 8, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = call i32 @wl1271_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %50

41:                                               ; preds = %28
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__clear_bit(i64 %43, i32 %46)
  %48 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %39
  %51 = load %struct.wl12xx_cmd_role_disable*, %struct.wl12xx_cmd_role_disable** %6, align 8
  %52 = call i32 @kfree(%struct.wl12xx_cmd_role_disable* %51)
  br label %53

53:                                               ; preds = %50, %25
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.wl12xx_cmd_role_disable* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_disable*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_disable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
