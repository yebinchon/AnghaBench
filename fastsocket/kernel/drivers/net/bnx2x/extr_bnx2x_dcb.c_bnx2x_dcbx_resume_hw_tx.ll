; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_resume_hw_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_resume_hw_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_tx_start_params }
%struct.bnx2x_func_tx_start_params = type { i32 }

@BNX2X_F_CMD_TX_START = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"START TRAFFIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unable to resume traffic after HW configuration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_dcbx_resume_hw_tx(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_func_state_params, align 8
  %4 = alloca %struct.bnx2x_func_tx_start_params*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = bitcast %struct.bnx2x_func_state_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.bnx2x_func_tx_start_params* %8, %struct.bnx2x_func_tx_start_params** %4, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 2
  store i32* %10, i32** %11, align 8
  %12 = load i32, i32* @BNX2X_F_CMD_TX_START, align 4
  %13 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %15 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 0
  %16 = call i32 @__set_bit(i32 %14, i32* %15)
  %17 = load i32, i32* @RAMROD_RETRY, align 4
  %18 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %3, i32 0, i32 0
  %19 = call i32 @__set_bit(i32 %17, i32* %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %22 = call i32 @bnx2x_dcbx_fw_struct(%struct.bnx2x* %20, %struct.bnx2x_func_tx_start_params* %21)
  %23 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %24 = call i32 @DP(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %25, %struct.bnx2x_func_state_params* %3)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (...) @bnx2x_panic()
  br label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @bnx2x_dcbx_fw_struct(%struct.bnx2x*, %struct.bnx2x_func_tx_start_params*) #2

declare dso_local i32 @DP(i32, i8*) #2

declare dso_local i32 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #2

declare dso_local i32 @BNX2X_ERR(i8*) #2

declare dso_local i32 @bnx2x_panic(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
