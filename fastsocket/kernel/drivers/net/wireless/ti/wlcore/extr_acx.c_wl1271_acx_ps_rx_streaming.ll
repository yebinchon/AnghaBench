; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ps_rx_streaming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ps_rx_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_ps_rx_streaming = type { i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx ps rx streaming\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_PS_RX_STREAMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acx ps rx streaming failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_ps_rx_streaming(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_acx_ps_rx_streaming*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @DEBUG_ACX, align 4
  %13 = call i32 @wl1271_debug(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wl1271_acx_ps_rx_streaming* @kzalloc(i32 20, i32 %14)
  store %struct.wl1271_acx_ps_rx_streaming* %15, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %16 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %17 = icmp ne %struct.wl1271_acx_ps_rx_streaming* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  br label %86

21:                                               ; preds = %3
  %22 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %9, align 4
  br label %32

31:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %29
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %82, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %85

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %82

43:                                               ; preds = %36
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %48 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, %struct.wl1271_acx_ps_rx_streaming* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %51 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, %struct.wl1271_acx_ps_rx_streaming* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %57 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, %struct.wl1271_acx_ps_rx_streaming* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %64 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, %struct.wl1271_acx_ps_rx_streaming* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %71 = getelementptr inbounds %struct.wl1271_acx_ps_rx_streaming, %struct.wl1271_acx_ps_rx_streaming* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %73 = load i32, i32* @ACX_PS_RX_STREAMING, align 4
  %74 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %75 = call i32 @wl1271_cmd_configure(%struct.wl1271* %72, i32 %73, %struct.wl1271_acx_ps_rx_streaming* %74, i32 20)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %43
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %86

81:                                               ; preds = %43
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %33

85:                                               ; preds = %33
  br label %86

86:                                               ; preds = %85, %78, %18
  %87 = load %struct.wl1271_acx_ps_rx_streaming*, %struct.wl1271_acx_ps_rx_streaming** %7, align 8
  %88 = call i32 @kfree(%struct.wl1271_acx_ps_rx_streaming* %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_ps_rx_streaming* @kzalloc(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_ps_rx_streaming*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ps_rx_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
