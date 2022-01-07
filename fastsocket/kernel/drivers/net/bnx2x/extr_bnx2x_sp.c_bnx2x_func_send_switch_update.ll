; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_switch_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { %struct.TYPE_2__, %struct.bnx2x_func_sp_obj* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_switch_update_params }
%struct.bnx2x_func_switch_update_params = type { i32 }
%struct.bnx2x_func_sp_obj = type { i32, i64 }
%struct.function_update_data = type { i32, i32, i32 }

@SWITCH_UPDATE = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_send_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_send_switch_update(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_state_params*, align 8
  %5 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %6 = alloca %struct.function_update_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_func_switch_update_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %4, align 8
  %9 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %10, align 8
  store %struct.bnx2x_func_sp_obj* %11, %struct.bnx2x_func_sp_obj** %5, align 8
  %12 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.function_update_data*
  store %struct.function_update_data* %15, %struct.function_update_data** %6, align 8
  %16 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.bnx2x_func_switch_update_params* %21, %struct.bnx2x_func_switch_update_params** %8, align 8
  %22 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %23 = call i32 @memset(%struct.function_update_data* %22, i32 0, i32 12)
  %24 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %25 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.bnx2x_func_switch_update_params*, %struct.bnx2x_func_switch_update_params** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x_func_switch_update_params, %struct.bnx2x_func_switch_update_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %30 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SWITCH_UPDATE, align 4
  %32 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %33 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i32, i32* @RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @U64_HI(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @U64_LO(i32 %38)
  %40 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %41 = call i32 @bnx2x_sp_post(%struct.bnx2x* %34, i32 %35, i32 0, i32 %37, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @memset(%struct.function_update_data*, i32, i32) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
