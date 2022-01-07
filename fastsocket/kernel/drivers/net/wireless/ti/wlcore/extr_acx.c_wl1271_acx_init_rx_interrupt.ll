; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_init_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_init_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.wl1271_acx_rx_config_opt = type { i32, i8*, i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wl1271 rx interrupt config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RX_CONFIG_OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"wl1271 rx config opt failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_init_rx_interrupt(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl1271_acx_rx_config_opt*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wl1271_acx_rx_config_opt* @kzalloc(i32 32, i32 %7)
  store %struct.wl1271_acx_rx_config_opt* %8, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %9 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %10 = icmp ne %struct.wl1271_acx_rx_config_opt* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %22 = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, %struct.wl1271_acx_rx_config_opt* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %30 = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, %struct.wl1271_acx_rx_config_opt* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %38 = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, %struct.wl1271_acx_rx_config_opt* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %45 = getelementptr inbounds %struct.wl1271_acx_rx_config_opt, %struct.wl1271_acx_rx_config_opt* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %47 = load i32, i32* @ACX_RX_CONFIG_OPT, align 4
  %48 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %49 = call i32 @wl1271_cmd_configure(%struct.wl1271* %46, i32 %47, %struct.wl1271_acx_rx_config_opt* %48, i32 32)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %14
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %56

55:                                               ; preds = %14
  br label %56

56:                                               ; preds = %55, %52, %11
  %57 = load %struct.wl1271_acx_rx_config_opt*, %struct.wl1271_acx_rx_config_opt** %3, align 8
  %58 = call i32 @kfree(%struct.wl1271_acx_rx_config_opt* %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_rx_config_opt* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_rx_config_opt*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_rx_config_opt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
