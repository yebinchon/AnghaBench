; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_afex_viflists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_afex_viflists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { %struct.TYPE_2__, %struct.bnx2x_func_sp_obj* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_afex_viflists_params }
%struct.bnx2x_func_afex_viflists_params = type { i32, i32, i32, i32 }
%struct.bnx2x_func_sp_obj = type { i64 }
%struct.afex_vif_list_ramrod_data = type { i32, i32, i32, i32, i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"afex: ramrod lists, cmd 0x%x index 0x%x func_bit_map 0x%x func_to_clr 0x%x\0A\00", align 1
@RAMROD_CMD_ID_COMMON_AFEX_VIF_LISTS = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_send_afex_viflists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_send_afex_viflists(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_state_params*, align 8
  %5 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %6 = alloca %struct.afex_vif_list_ramrod_data*, align 8
  %7 = alloca %struct.bnx2x_func_afex_viflists_params*, align 8
  %8 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %4, align 8
  %9 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %10, align 8
  store %struct.bnx2x_func_sp_obj* %11, %struct.bnx2x_func_sp_obj** %5, align 8
  %12 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.afex_vif_list_ramrod_data*
  store %struct.afex_vif_list_ramrod_data* %15, %struct.afex_vif_list_ramrod_data** %6, align 8
  %16 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.bnx2x_func_afex_viflists_params* %18, %struct.bnx2x_func_afex_viflists_params** %7, align 8
  %19 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %20 = bitcast %struct.afex_vif_list_ramrod_data* %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %22 = call i32 @memset(%struct.afex_vif_list_ramrod_data* %21, i32 0, i32 20)
  %23 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %7, align 8
  %24 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %28 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %7, align 8
  %30 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %33 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %7, align 8
  %35 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %38 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %7, align 8
  %40 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %43 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %7, align 8
  %45 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %48 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @BNX2X_MSG_SP, align 4
  %50 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %51 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %54 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %57 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.afex_vif_list_ramrod_data*, %struct.afex_vif_list_ramrod_data** %6, align 8
  %60 = getelementptr inbounds %struct.afex_vif_list_ramrod_data, %struct.afex_vif_list_ramrod_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DP(i32 %49, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = load i32, i32* @RAMROD_CMD_ID_COMMON_AFEX_VIF_LISTS, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @U64_HI(i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @U64_LO(i32 %69)
  %71 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %72 = call i32 @bnx2x_sp_post(%struct.bnx2x* %63, i32 %64, i32 0, i32 %67, i32 %70, i32 %71)
  ret i32 %72
}

declare dso_local i32 @memset(%struct.afex_vif_list_ramrod_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
