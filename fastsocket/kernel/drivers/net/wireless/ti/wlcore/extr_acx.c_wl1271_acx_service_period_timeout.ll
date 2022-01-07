; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_service_period_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_service_period_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_rx_timeout = type { i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"acx service period timeout\00", align 1
@ACX_SERVICE_PERIOD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to set service period timeout: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_service_period_timeout(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.acx_rx_timeout*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_rx_timeout* @kzalloc(i32 24, i32 %7)
  store %struct.acx_rx_timeout* %8, %struct.acx_rx_timeout** %5, align 8
  %9 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %5, align 8
  %10 = icmp ne %struct.acx_rx_timeout* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* @DEBUG_ACX, align 4
  %16 = call i32 @wl1271_debug(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %5, align 8
  %21 = getelementptr inbounds %struct.acx_rx_timeout, %struct.acx_rx_timeout* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %5, align 8
  %29 = getelementptr inbounds %struct.acx_rx_timeout, %struct.acx_rx_timeout* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %5, align 8
  %37 = getelementptr inbounds %struct.acx_rx_timeout, %struct.acx_rx_timeout* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %39 = load i32, i32* @ACX_SERVICE_PERIOD_TIMEOUT, align 4
  %40 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %5, align 8
  %41 = call i32 @wl1271_cmd_configure(%struct.wl1271* %38, i32 %39, %struct.acx_rx_timeout* %40, i32 24)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %14
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @wl1271_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %48

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %47, %44, %11
  %49 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %5, align 8
  %50 = call i32 @kfree(%struct.acx_rx_timeout* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.acx_rx_timeout* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_rx_timeout*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rx_timeout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
