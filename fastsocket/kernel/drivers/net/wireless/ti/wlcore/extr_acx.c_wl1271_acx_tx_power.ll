; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_current_tx_power = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"acx dot11_cur_tx_pwr %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOT11_CUR_TX_PWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"configure of tx power failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_tx_power(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acx_current_tx_power*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 25
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.acx_current_tx_power* @kzalloc(i32 8, i32 %22)
  store %struct.acx_current_tx_power* %23, %struct.acx_current_tx_power** %8, align 8
  %24 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %8, align 8
  %25 = icmp ne %struct.acx_current_tx_power* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %8, align 8
  %34 = getelementptr inbounds %struct.acx_current_tx_power, %struct.acx_current_tx_power* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 10
  %37 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %8, align 8
  %38 = getelementptr inbounds %struct.acx_current_tx_power, %struct.acx_current_tx_power* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %40 = load i32, i32* @DOT11_CUR_TX_PWR, align 4
  %41 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %8, align 8
  %42 = call i32 @wl1271_cmd_configure(%struct.wl1271* %39, i32 %40, %struct.acx_current_tx_power* %41, i32 8)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @wl1271_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %49

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %45, %26
  %50 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %8, align 8
  %51 = call i32 @kfree(%struct.acx_current_tx_power* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.acx_current_tx_power* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_current_tx_power*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_current_tx_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
