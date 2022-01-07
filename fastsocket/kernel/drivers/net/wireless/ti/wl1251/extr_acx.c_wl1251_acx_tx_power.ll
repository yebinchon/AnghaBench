; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_current_tx_power = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx dot11_cur_tx_pwr\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOT11_CUR_TX_PWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"configure of tx power failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_tx_power(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acx_current_tx_power*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @DEBUG_ACX, align 4
  %9 = call i32 @wl1251_debug(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 25
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.acx_current_tx_power* @kzalloc(i32 4, i32 %19)
  store %struct.acx_current_tx_power* %20, %struct.acx_current_tx_power** %6, align 8
  %21 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %6, align 8
  %22 = icmp ne %struct.acx_current_tx_power* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 10
  %29 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %6, align 8
  %30 = getelementptr inbounds %struct.acx_current_tx_power, %struct.acx_current_tx_power* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %32 = load i32, i32* @DOT11_CUR_TX_PWR, align 4
  %33 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %6, align 8
  %34 = call i32 @wl1251_cmd_configure(%struct.wl1251* %31, i32 %32, %struct.acx_current_tx_power* %33, i32 4)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @wl1251_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %41

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %37, %23
  %42 = load %struct.acx_current_tx_power*, %struct.acx_current_tx_power** %6, align 8
  %43 = call i32 @kfree(%struct.acx_current_tx_power* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_current_tx_power* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_current_tx_power*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_current_tx_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
