; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { %struct.TYPE_2__, %struct.bnx2x_func_sp_obj* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_start_params }
%struct.bnx2x_func_start_params = type { i32, i32, i32, i32, i64 }
%struct.bnx2x_func_sp_obj = type { i32, i64 }
%struct.function_start_data = type { i32, i32, i32, i32, i32, i64 }

@RAMROD_CMD_ID_COMMON_FUNCTION_START = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_send_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_send_start(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_state_params*, align 8
  %5 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %6 = alloca %struct.function_start_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_func_start_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %4, align 8
  %9 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %10, align 8
  store %struct.bnx2x_func_sp_obj* %11, %struct.bnx2x_func_sp_obj** %5, align 8
  %12 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.function_start_data*
  store %struct.function_start_data* %15, %struct.function_start_data** %6, align 8
  %16 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.bnx2x_func_start_params* %21, %struct.bnx2x_func_start_params** %8, align 8
  %22 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %23 = call i32 @memset(%struct.function_start_data* %22, i32 0, i32 32)
  %24 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %25 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %28 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %30 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %34 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = call i32 @BP_PATH(%struct.bnx2x* %35)
  %37 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %38 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %40 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %43 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %45 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %48 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %50 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %53 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = load i32, i32* @RAMROD_CMD_ID_COMMON_FUNCTION_START, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @U64_HI(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @U64_LO(i32 %58)
  %60 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %61 = call i32 @bnx2x_sp_post(%struct.bnx2x* %54, i32 %55, i32 0, i32 %57, i32 %59, i32 %60)
  ret i32 %61
}

declare dso_local i32 @memset(%struct.function_start_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
