; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_bcn_dtim_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_bcn_dtim_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_beacon_broadcast = type { i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx bcn dtim options\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCN_RX_TIMEOUT_DEF_VALUE = common dso_local global i32 0, align 4
@BROADCAST_RX_TIMEOUT_DEF_VALUE = common dso_local global i32 0, align 4
@RX_BROADCAST_IN_PS_DEF_VALUE = common dso_local global i32 0, align 4
@CONSECUTIVE_PS_POLL_FAILURE_DEF = common dso_local global i32 0, align 4
@ACX_BCN_DTIM_OPTIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set rx config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_bcn_dtim_options(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.acx_beacon_broadcast*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1251_debug(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_beacon_broadcast* @kzalloc(i32 16, i32 %7)
  store %struct.acx_beacon_broadcast* %8, %struct.acx_beacon_broadcast** %3, align 8
  %9 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %10 = icmp ne %struct.acx_beacon_broadcast* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* @BCN_RX_TIMEOUT_DEF_VALUE, align 4
  %16 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %17 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @BROADCAST_RX_TIMEOUT_DEF_VALUE, align 4
  %19 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %20 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @RX_BROADCAST_IN_PS_DEF_VALUE, align 4
  %22 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %23 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @CONSECUTIVE_PS_POLL_FAILURE_DEF, align 4
  %25 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %26 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %28 = load i32, i32* @ACX_BCN_DTIM_OPTIONS, align 4
  %29 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %30 = call i32 @wl1251_cmd_configure(%struct.wl1251* %27, i32 %28, %struct.acx_beacon_broadcast* %29, i32 16)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %37

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36, %33, %11
  %38 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %3, align 8
  %39 = call i32 @kfree(%struct.acx_beacon_broadcast* %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_beacon_broadcast* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_beacon_broadcast*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_broadcast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
