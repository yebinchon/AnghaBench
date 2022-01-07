; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_q_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_q_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32 }
%struct.bnx2x_rx_mode_ramrod_params = type { i64, i64, i64, i64, i32, i32, i32, i32*, i32, i32*, i32, i64 }

@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@rx_mode_rdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Set rx_mode %d failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_q_rx_mode(%struct.bnx2x* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bnx2x_rx_mode_ramrod_params, align 8
  %15 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = call i32 @memset(%struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 88)
  %17 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 10
  store i32 %18, i32* %19, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 9
  store i32* %21, i32** %22, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %24 = call i32 @BP_FUNC(%struct.bnx2x* %23)
  %25 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 8
  store i32 %24, i32* %25, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 7
  store i32* %27, i32** %28, align 8
  %29 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %30 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %32 = load i32, i32* @rx_mode_rdata, align 4
  %33 = call i32 @bnx2x_sp(%struct.bnx2x* %31, i32 %32)
  %34 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %36 = load i32, i32* @rx_mode_rdata, align 4
  %37 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %35, i32 %36)
  %38 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %40 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 1
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %14, i32 0, i32 3
  store i64 %49, i64* %50, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %52 = call i32 @bnx2x_config_rx_mode(%struct.bnx2x* %51, %struct.bnx2x_rx_mode_ramrod_params* %14)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %6
  %56 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %62

61:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.bnx2x_rx_mode_ramrod_params*, i32, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_config_rx_mode(%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
