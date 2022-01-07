; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rx_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_rx_config = type { i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acx rx config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RX_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set rx config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_rx_config(%struct.wl1251* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acx_rx_config*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1251_debug(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acx_rx_config* @kzalloc(i32 16, i32 %11)
  store %struct.acx_rx_config* %12, %struct.acx_rx_config** %7, align 8
  %13 = load %struct.acx_rx_config*, %struct.acx_rx_config** %7, align 8
  %14 = icmp ne %struct.acx_rx_config* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.acx_rx_config*, %struct.acx_rx_config** %7, align 8
  %21 = getelementptr inbounds %struct.acx_rx_config, %struct.acx_rx_config* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.acx_rx_config*, %struct.acx_rx_config** %7, align 8
  %24 = getelementptr inbounds %struct.acx_rx_config, %struct.acx_rx_config* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %26 = load i32, i32* @ACX_RX_CFG, align 4
  %27 = load %struct.acx_rx_config*, %struct.acx_rx_config** %7, align 8
  %28 = call i32 @wl1251_cmd_configure(%struct.wl1251* %25, i32 %26, %struct.acx_rx_config* %27, i32 16)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %31, %15
  %36 = load %struct.acx_rx_config*, %struct.acx_rx_config** %7, align 8
  %37 = call i32 @kfree(%struct.acx_rx_config* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_rx_config* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_rx_config*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
