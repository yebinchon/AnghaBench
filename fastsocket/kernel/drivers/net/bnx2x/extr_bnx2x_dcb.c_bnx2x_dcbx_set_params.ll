; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, i32 }

@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BNX2X_DCBX_STATE_NEG_RECEIVED\0A\00", align 1
@DRV_FLAGS_DCB_CONFIGURED = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_TX_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BNX2X_DCBX_STATE_TX_PAUSED\0A\00", align 1
@BNX2X_SP_RTNL_TX_RESUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"BNX2X_DCBX_STATE_TX_RELEASED\0A\00", align 1
@DRV_MSG_CODE_DCBX_PMF_DRV_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown DCBX_STATE\0A\00", align 1
@DCB_CMD_CEE_GET = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_dcbx_set_params(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %70 [
    i32 130, label %6
    i32 129, label %48
    i32 128, label %64
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %8 = call i32 @DP(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = call i32 @bnx2x_dcbx_read_shmem_neg_results(%struct.bnx2x* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %72

13:                                               ; preds = %6
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bnx2x_dump_dcbx_drv_param(%struct.bnx2x* %14, i32* %16, i32 %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bnx2x_get_dcbx_drv_param(%struct.bnx2x* %21, i32* %23, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = load i32, i32* @DRV_FLAGS_DCB_CONFIGURED, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @bnx2x_update_drv_flags(%struct.bnx2x* %28, i32 %30, i32 1)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = call i32 @bnx2x_dcbx_update_tc_mapping(%struct.bnx2x* %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = call i32 @IS_MF(%struct.bnx2x* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %13
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = call i32 @bnx2x_link_sync_notify(%struct.bnx2x* %38)
  br label %40

40:                                               ; preds = %37, %13
  %41 = load i32, i32* @BNX2X_SP_RTNL_TX_STOP, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 1
  %47 = call i32 @schedule_delayed_work(i32* %46, i32 0)
  br label %72

48:                                               ; preds = %2
  %49 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %50 = call i32 @DP(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i32 @bnx2x_pfc_set_pfc(%struct.bnx2x* %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = call i32 @bnx2x_dcbx_update_ets_params(%struct.bnx2x* %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = call i32 @bnx2x_set_local_cmng(%struct.bnx2x* %55)
  %57 = load i32, i32* @BNX2X_SP_RTNL_TX_RESUME, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 2
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 1
  %63 = call i32 @schedule_delayed_work(i32* %62, i32 0)
  br label %72

64:                                               ; preds = %2
  %65 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %66 = call i32 @DP(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = load i32, i32* @DRV_MSG_CODE_DCBX_PMF_DRV_OK, align 4
  %69 = call i32 @bnx2x_fw_command(%struct.bnx2x* %67, i32 %68, i32 0)
  br label %72

70:                                               ; preds = %2
  %71 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %12, %40, %48, %64, %70
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_dcbx_read_shmem_neg_results(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dump_dcbx_drv_param(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_get_dcbx_drv_param(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_update_drv_flags(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_dcbx_update_tc_mapping(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_sync_notify(%struct.bnx2x*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @bnx2x_pfc_set_pfc(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_update_ets_params(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_local_cmng(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
