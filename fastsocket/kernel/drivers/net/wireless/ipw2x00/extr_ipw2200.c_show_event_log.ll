; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_show_event_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_show_event_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw_priv = type { i32 }
%struct.ipw_event = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate memory for log\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A%08X%08X%08X\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_event_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_event_log(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipw_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipw_event*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.ipw_priv* @dev_get_drvdata(%struct.device* %14)
  store %struct.ipw_priv* %15, %struct.ipw_priv** %8, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %17 = call i32 @ipw_get_event_log_len(%struct.ipw_priv* %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 12
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 12, %26
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sext i32 %29 to i64
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i64 [ %27, %24 ], [ %30, %28 ]
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ipw_event* @kzalloc(i32 %34, i32 %35)
  store %struct.ipw_event* %36, %struct.ipw_event** %11, align 8
  %37 = load %struct.ipw_event*, %struct.ipw_event** %11, align 8
  %38 = icmp ne %struct.ipw_event* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %111

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 12
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ipw_event*, %struct.ipw_event** %11, align 8
  %49 = call i32 @ipw_capture_event_log(%struct.ipw_priv* %46, i32 %47, %struct.ipw_event* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %53, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %94, %41
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load %struct.ipw_event*, %struct.ipw_event** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ipw_event, %struct.ipw_event* %73, i64 %75
  %77 = getelementptr inbounds %struct.ipw_event, %struct.ipw_event* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipw_event*, %struct.ipw_event** %11, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ipw_event, %struct.ipw_event* %79, i64 %81
  %83 = getelementptr inbounds %struct.ipw_event, %struct.ipw_event* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ipw_event*, %struct.ipw_event** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ipw_event, %struct.ipw_event* %85, i64 %87
  %89 = getelementptr inbounds %struct.ipw_event, %struct.ipw_event* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %69, i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %84, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %65
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %61

97:                                               ; preds = %61
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load %struct.ipw_event*, %struct.ipw_event** %11, align 8
  %109 = call i32 @kfree(%struct.ipw_event* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %97, %39
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.ipw_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ipw_get_event_log_len(%struct.ipw_priv*) #1

declare dso_local %struct.ipw_event* @kzalloc(i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @ipw_capture_event_log(%struct.ipw_priv*, i32, %struct.ipw_event*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.ipw_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
