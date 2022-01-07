; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_adjust_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_adjust_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i64, i8* }

@fwlog_param = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"continuous\00", align 1
@WL12XX_FWLOG_CONTINUOUS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ondemand\00", align 1
@WL12XX_FWLOG_ON_DEMAND = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"dbgpins\00", align 1
@WL12XX_FWLOG_OUTPUT_DBG_PINS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@WL12XX_FWLOG_OUTPUT_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown fwlog parameter %s\00", align 1
@bug_on_recovery = common dso_local global i32 0, align 4
@no_recovery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wlcore_adjust_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_adjust_conf(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load i64, i64* @fwlog_param, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %61

5:                                                ; preds = %1
  %6 = load i64, i64* @fwlog_param, align 8
  %7 = call i32 @strcmp(i64 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load i8*, i8** @WL12XX_FWLOG_CONTINUOUS, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i8* %10, i8** %14, align 8
  br label %60

15:                                               ; preds = %5
  %16 = load i64, i64* @fwlog_param, align 8
  %17 = call i32 @strcmp(i64 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** @WL12XX_FWLOG_ON_DEMAND, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i8* %20, i8** %24, align 8
  br label %59

25:                                               ; preds = %15
  %26 = load i64, i64* @fwlog_param, align 8
  %27 = call i32 @strcmp(i64 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** @WL12XX_FWLOG_CONTINUOUS, align 8
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @WL12XX_FWLOG_OUTPUT_DBG_PINS, align 4
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  br label %58

40:                                               ; preds = %25
  %41 = load i64, i64* @fwlog_param, align 8
  %42 = call i32 @strcmp(i64 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @WL12XX_FWLOG_OUTPUT_NONE, align 4
  %50 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  br label %57

54:                                               ; preds = %40
  %55 = load i64, i64* @fwlog_param, align 8
  %56 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %54, %44
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %19
  br label %60

60:                                               ; preds = %59, %9
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* @bug_on_recovery, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* @bug_on_recovery, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i32, i32* @no_recovery, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* @no_recovery, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 8
  br label %83

83:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @wl1271_error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
