; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_data_path_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_data_path_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_data_path_params_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.acx_data_path_params = type { i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx data path params\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_RX_PACKET_RING_CHUNK_SIZE = common dso_local global i32 0, align 4
@DP_TX_PACKET_RING_CHUNK_SIZE = common dso_local global i32 0, align 4
@DP_RX_PACKET_RING_CHUNK_NUM = common dso_local global i32 0, align 4
@DP_TX_PACKET_RING_CHUNK_NUM = common dso_local global i32 0, align 4
@FW_TX_CMPLT_BLOCK_SIZE = common dso_local global i32 0, align 4
@DP_TX_COMPLETE_TIME_OUT = common dso_local global i32 0, align 4
@ACX_DATA_PATH_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to read data path parameters: %d\00", align 1
@CMD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"data path parameter acx status failed\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_data_path_params(%struct.wl1251* %0, %struct.acx_data_path_params_resp* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_data_path_params_resp*, align 8
  %5 = alloca %struct.acx_data_path_params*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store %struct.acx_data_path_params_resp* %1, %struct.acx_data_path_params_resp** %4, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_data_path_params* @kzalloc(i32 28, i32 %9)
  store %struct.acx_data_path_params* %10, %struct.acx_data_path_params** %5, align 8
  %11 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %12 = icmp ne %struct.acx_data_path_params* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load i32, i32* @DP_RX_PACKET_RING_CHUNK_SIZE, align 4
  %18 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %19 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @DP_TX_PACKET_RING_CHUNK_SIZE, align 4
  %21 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %22 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @DP_RX_PACKET_RING_CHUNK_NUM, align 4
  %24 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %25 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DP_TX_PACKET_RING_CHUNK_NUM, align 4
  %27 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %28 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %30 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %32 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %33 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DP_TX_COMPLETE_TIME_OUT, align 4
  %35 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %36 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %38 = load i32, i32* @ACX_DATA_PATH_PARAMS, align 4
  %39 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %40 = call i32 @wl1251_cmd_configure(%struct.wl1251* %37, i32 %38, %struct.acx_data_path_params* %39, i32 28)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %16
  br label %68

44:                                               ; preds = %16
  %45 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %46 = load i32, i32* @ACX_DATA_PATH_PARAMS, align 4
  %47 = load %struct.acx_data_path_params_resp*, %struct.acx_data_path_params_resp** %4, align 8
  %48 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %45, i32 %46, %struct.acx_data_path_params_resp* %47, i32 8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, ...) @wl1251_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %68

54:                                               ; preds = %44
  %55 = load %struct.acx_data_path_params_resp*, %struct.acx_data_path_params_resp** %4, align 8
  %56 = getelementptr inbounds %struct.acx_data_path_params_resp, %struct.acx_data_path_params_resp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CMD_STATUS_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = call i32 (i8*, ...) @wl1251_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %68

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %62, %51, %43, %13
  %69 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %5, align 8
  %70 = call i32 @kfree(%struct.acx_data_path_params* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_data_path_params* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_data_path_params*, i32) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_data_path_params_resp*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, ...) #1

declare dso_local i32 @kfree(%struct.acx_data_path_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
