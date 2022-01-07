; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_rxmode_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_rxmode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bnx2x_rx_mode_ramrod_params }
%struct.bnx2x_rx_mode_ramrod_params = type { i64, i64, i32, i32, i32, i32, i32*, i32, i32*, i32, i32 }
%struct.bnx2x_vfop_cmd = type { i32, i32 }
%struct.bnx2x_vf_queue = type { i32 }
%struct.bnx2x_vfop = type { i32 }

@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@RAMROD_RX = common dso_local global i32 0, align 4
@RAMROD_TX = common dso_local global i32 0, align 4
@rx_mode_rdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BNX2X_VFOP_RXMODE_CONFIG = common dso_local global i32 0, align 4
@bnx2x_vfop_rxmode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfop_rxmode_cmd(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vfop_cmd* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca %struct.bnx2x_vfop_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bnx2x_vf_queue*, align 8
  %13 = alloca %struct.bnx2x_vfop*, align 8
  %14 = alloca %struct.bnx2x_rx_mode_ramrod_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %8, align 8
  store %struct.bnx2x_vfop_cmd* %2, %struct.bnx2x_vfop_cmd** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf* %15, i32 %16)
  store %struct.bnx2x_vf_queue* %17, %struct.bnx2x_vf_queue** %12, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %20 = call %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x* %18, %struct.bnx2x_virtf* %19)
  store %struct.bnx2x_vfop* %20, %struct.bnx2x_vfop** %13, align 8
  %21 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %13, align 8
  %22 = icmp ne %struct.bnx2x_vfop* %21, null
  br i1 %22, label %23, label %99

23:                                               ; preds = %5
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %25 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.bnx2x_rx_mode_ramrod_params* %26, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %27 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %28 = call i32 @memset(%struct.bnx2x_rx_mode_ramrod_params* %27, i32 0, i32 64)
  %29 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %12, align 8
  %30 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %33 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %35 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %12, align 8
  %36 = call i32 @vfq_cl_id(%struct.bnx2x_virtf* %34, %struct.bnx2x_vf_queue* %35)
  %37 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %38 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 0
  %41 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %42 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %41, i32 0, i32 8
  store i32* %40, i32** %42, align 8
  %43 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %44 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FW_VF_HANDLE(i32 %45)
  %47 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %48 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %51 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %54 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %55, i32 0, i32 0
  %57 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %58 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %57, i32 0, i32 6
  store i32* %56, i32** %58, align 8
  %59 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %60 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %61 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %63 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %64 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @RAMROD_RX, align 4
  %67 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %68 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %67, i32 0, i32 4
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load i32, i32* @RAMROD_TX, align 4
  %71 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %72 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %71, i32 0, i32 4
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %75 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rx_mode_rdata, i32 0, i32 0), align 4
  %77 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %74, %struct.bnx2x_virtf* %75, i32 %76)
  %78 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %79 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %81 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rx_mode_rdata, i32 0, i32 0), align 4
  %83 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %80, %struct.bnx2x_virtf* %81, i32 %82)
  %84 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %14, align 8
  %85 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @BNX2X_VFOP_RXMODE_CONFIG, align 4
  %87 = load i32, i32* @bnx2x_vfop_rxmode, align 4
  %88 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %9, align 8
  %89 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bnx2x_vfop_opset(i32 %86, i32 %87, i32 %90)
  %92 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %93 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %94 = load i32, i32* @bnx2x_vfop_rxmode, align 4
  %95 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %9, align 8
  %96 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bnx2x_vfop_transition(%struct.bnx2x* %92, %struct.bnx2x_virtf* %93, i32 %94, i32 %97)
  store i32 %98, i32* %6, align 4
  br label %102

99:                                               ; preds = %5
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %23
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf*, i32) #1

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @memset(%struct.bnx2x_rx_mode_ramrod_params*, i32, i32) #1

declare dso_local i32 @vfq_cl_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_vf_sp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_sp_map(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vfop_opset(i32, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_transition(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
