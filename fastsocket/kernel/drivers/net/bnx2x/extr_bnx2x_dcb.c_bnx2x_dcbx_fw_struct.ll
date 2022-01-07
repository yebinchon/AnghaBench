; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_fw_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_fw_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.bnx2x_func_tx_start_params = type { i32, i32, i64, %struct.priority_cos* }
%struct.priority_cos = type { i32, i64 }

@drv_flags = common dso_local global i32 0, align 4
@DRV_FLAGS_DCB_MFW_CONFIGURED = common dso_local global i32 0, align 4
@DCBX_REMOTE_MIB_ERROR = common dso_local global i32 0, align 4
@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_func_tx_start_params*)* @bnx2x_dcbx_fw_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_fw_struct(%struct.bnx2x* %0, %struct.bnx2x_func_tx_start_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_tx_start_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.priority_cos*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_tx_start_params* %1, %struct.bnx2x_func_tx_start_params** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load i32, i32* @drv_flags, align 4
  %18 = call i64 @SHMEM2_HAS(%struct.bnx2x* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load i32, i32* @drv_flags, align 4
  %23 = call i32 @SHMEM2_RD(%struct.bnx2x* %21, i32 %22)
  %24 = load i32, i32* @DRV_FLAGS_DCB_MFW_CONFIGURED, align 4
  %25 = shl i32 1, %24
  %26 = call i64 @GET_FLAGS(i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %2
  %29 = phi i1 [ false, %2 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %32 = call i32 @memset(%struct.bnx2x_func_tx_start_params* %31, i32 0, i32 24)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DCBX_REMOTE_MIB_ERROR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %115

43:                                               ; preds = %39, %28
  %44 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %45 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %44, i32 0, i32 3
  %46 = load %struct.priority_cos*, %struct.priority_cos** %45, align 8
  store %struct.priority_cos* %46, %struct.priority_cos** %8, align 8
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %106, %43
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.priority_cos*, %struct.priority_cos** %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %64, i64 %65
  %67 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load %struct.priority_cos*, %struct.priority_cos** %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %68, i64 %69
  %71 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 1, %72
  store i32 %73, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %102, %59
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %74
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.priority_cos*, %struct.priority_cos** %8, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %97, i64 %98
  %100 = getelementptr inbounds %struct.priority_cos, %struct.priority_cos* %99, i32 0, i32 1
  store i64 %96, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %82
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %74

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %55

109:                                              ; preds = %55
  %110 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %111 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %113 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %114 = call i32 @bnx2x_dcbx_print_cos_params(%struct.bnx2x* %112, %struct.bnx2x_func_tx_start_params* %113)
  br label %115

115:                                              ; preds = %109, %42
  ret void
}

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i32 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @memset(%struct.bnx2x_func_tx_start_params*, i32, i32) #1

declare dso_local i32 @bnx2x_dcbx_print_cos_params(%struct.bnx2x*, %struct.bnx2x_func_tx_start_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
