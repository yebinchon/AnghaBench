; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_q_send_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_state_params = type { %struct.TYPE_2__, %struct.bnx2x_queue_sp_obj* }
%struct.TYPE_2__ = type { %struct.bnx2x_queue_update_params }
%struct.bnx2x_queue_update_params = type { i64 }
%struct.bnx2x_queue_sp_obj = type { i64, i32*, i32, i32, i64 }
%struct.client_update_ramrod_data = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"queue[%d]: cid_index (%d) is out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_CLIENT_UPDATE = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_state_params*)* @bnx2x_q_send_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_q_send_update(%struct.bnx2x* %0, %struct.bnx2x_queue_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_queue_state_params*, align 8
  %6 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %7 = alloca %struct.client_update_ramrod_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_queue_update_params*, align 8
  %10 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_queue_state_params* %1, %struct.bnx2x_queue_state_params** %5, align 8
  %11 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %11, i32 0, i32 1
  %13 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %12, align 8
  store %struct.bnx2x_queue_sp_obj* %13, %struct.bnx2x_queue_sp_obj** %6, align 8
  %14 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.client_update_ramrod_data*
  store %struct.client_update_ramrod_data* %17, %struct.client_update_ramrod_data** %7, align 8
  %18 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.bnx2x_queue_update_params* %23, %struct.bnx2x_queue_update_params** %9, align 8
  %24 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %9, align 8
  %25 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %34 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %2
  %41 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %7, align 8
  %42 = call i32 @memset(%struct.client_update_ramrod_data* %41, i32 0, i32 4)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %44 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %45 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %9, align 8
  %46 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %7, align 8
  %47 = call i32 @bnx2x_q_fill_update_data(%struct.bnx2x* %43, %struct.bnx2x_queue_sp_obj* %44, %struct.bnx2x_queue_update_params* %45, %struct.client_update_ramrod_data* %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %49 = load i32, i32* @RAMROD_CMD_ID_ETH_CLIENT_UPDATE, align 4
  %50 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %51 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @U64_HI(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @U64_LO(i32 %58)
  %60 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %61 = call i32 @bnx2x_sp_post(%struct.bnx2x* %48, i32 %49, i32 %55, i32 %57, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %40, %32
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @BNX2X_ERR(i8*, i32, i64) #1

declare dso_local i32 @memset(%struct.client_update_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_q_fill_update_data(%struct.bnx2x*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_update_params*, %struct.client_update_ramrod_data*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
