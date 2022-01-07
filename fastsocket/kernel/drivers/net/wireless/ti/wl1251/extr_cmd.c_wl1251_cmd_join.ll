; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64*, i32, i32 }
%struct.cmd_join = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cmd join%s ch %d %d/%d\00", align 1
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" ibss\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@RATE_MASK_1MBPS = common dso_local global i32 0, align 4
@RATE_MASK_2MBPS = common dso_local global i32 0, align 4
@RATE_MASK_5_5MBPS = common dso_local global i32 0, align 4
@RATE_MASK_11MBPS = common dso_local global i32 0, align 4
@JOIN_CMD_CTRL_TX_FLUSH = common dso_local global i32 0, align 4
@CMD_START_JOIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to initiate cmd join\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_join(%struct.wl1251* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.cmd_join*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cmd_join* @kzalloc(i32 48, i32 %15)
  store %struct.cmd_join* %16, %struct.cmd_join** %11, align 8
  %17 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %18 = icmp ne %struct.cmd_join* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %102

22:                                               ; preds = %5
  %23 = load i32, i32* @DEBUG_CMD, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @wl1251_debug(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %29, i32 %30, i64 %31)
  %33 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %34 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %33, i32 0, i32 8
  %35 = bitcast i32* %34 to i64*
  store i64* %35, i64** %14, align 8
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %55, %22
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %42 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %43, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %60 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %63 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %65 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %68 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @RATE_MASK_1MBPS, align 4
  %70 = load i32, i32* @RATE_MASK_2MBPS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RATE_MASK_5_5MBPS, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RATE_MASK_11MBPS, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %77 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %80 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %83 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %86 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %89 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @JOIN_CMD_CTRL_TX_FLUSH, align 4
  %91 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %92 = getelementptr inbounds %struct.cmd_join, %struct.cmd_join* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %94 = load i32, i32* @CMD_START_JOIN, align 4
  %95 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %96 = call i32 @wl1251_cmd_send(%struct.wl1251* %93, i32 %94, %struct.cmd_join* %95, i32 48)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %58
  %100 = call i32 @wl1251_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %102

101:                                              ; preds = %58
  br label %102

102:                                              ; preds = %101, %99, %19
  %103 = load %struct.cmd_join*, %struct.cmd_join** %11, align 8
  %104 = call i32 @kfree(%struct.cmd_join* %103)
  %105 = load i32, i32* %12, align 4
  ret i32 %105
}

declare dso_local %struct.cmd_join* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i8*, i64, i32, i64) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.cmd_join*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @kfree(%struct.cmd_join*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
