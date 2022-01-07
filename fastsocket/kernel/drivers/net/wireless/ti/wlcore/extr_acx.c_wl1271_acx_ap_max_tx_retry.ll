; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ap_max_tx_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ap_max_tx_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_ap_max_tx_retry = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx ap max tx retry\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_MAX_TX_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acx ap max tx retry failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_ap_max_tx_retry(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.wl1271_acx_ap_max_tx_retry*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.wl1271_acx_ap_max_tx_retry* null, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %8 = load i32, i32* @DEBUG_ACX, align 4
  %9 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wl1271_acx_ap_max_tx_retry* @kzalloc(i32 8, i32 %10)
  store %struct.wl1271_acx_ap_max_tx_retry* %11, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %12 = load %struct.wl1271_acx_ap_max_tx_retry*, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %13 = icmp ne %struct.wl1271_acx_ap_max_tx_retry* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %19 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wl1271_acx_ap_max_tx_retry*, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %22 = getelementptr inbounds %struct.wl1271_acx_ap_max_tx_retry, %struct.wl1271_acx_ap_max_tx_retry* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load %struct.wl1271_acx_ap_max_tx_retry*, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %30 = getelementptr inbounds %struct.wl1271_acx_ap_max_tx_retry, %struct.wl1271_acx_ap_max_tx_retry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = load i32, i32* @ACX_MAX_TX_FAILURE, align 4
  %33 = load %struct.wl1271_acx_ap_max_tx_retry*, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %34 = call i32 @wl1271_cmd_configure(%struct.wl1271* %31, i32 %32, %struct.wl1271_acx_ap_max_tx_retry* %33, i32 8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %41

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.wl1271_acx_ap_max_tx_retry*, %struct.wl1271_acx_ap_max_tx_retry** %6, align 8
  %43 = call i32 @kfree(%struct.wl1271_acx_ap_max_tx_retry* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_ap_max_tx_retry* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_ap_max_tx_retry*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ap_max_tx_retry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
