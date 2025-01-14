; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_beacon_filter_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_beacon_filter_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_beacon_filter_option = type { i32, i64 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx beacon filter opt\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_BEACON_FILTER_OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set beacon filter opt: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_beacon_filter_opt(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acx_beacon_filter_option*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_beacon_filter_option* @kzalloc(i32 16, i32 %9)
  store %struct.acx_beacon_filter_option* %10, %struct.acx_beacon_filter_option** %5, align 8
  %11 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %5, align 8
  %12 = icmp ne %struct.acx_beacon_filter_option* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %5, align 8
  %19 = getelementptr inbounds %struct.acx_beacon_filter_option, %struct.acx_beacon_filter_option* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %5, align 8
  %21 = getelementptr inbounds %struct.acx_beacon_filter_option, %struct.acx_beacon_filter_option* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %23 = load i32, i32* @ACX_BEACON_FILTER_OPT, align 4
  %24 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %5, align 8
  %25 = call i32 @wl1251_cmd_configure(%struct.wl1251* %22, i32 %23, %struct.acx_beacon_filter_option* %24, i32 16)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @wl1251_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %32

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %28, %13
  %33 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %5, align 8
  %34 = call i32 @kfree(%struct.acx_beacon_filter_option* %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_beacon_filter_option* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_beacon_filter_option*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_filter_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
