; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_dcc_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_dcc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32*, i32 }

@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"dcc_event 0x%x\0A\00", align 1
@DRV_STATUS_DCC_DISABLE_ENABLE_PF = common dso_local global i32 0, align 4
@FUNC_MF_CFG_FUNC_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mf_cfg function disabled\0A\00", align 1
@MF_FUNC_DIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"mf_cfg function enabled\0A\00", align 1
@DRV_STATUS_DCC_BANDWIDTH_ALLOCATION = common dso_local global i32 0, align 4
@DRV_MSG_CODE_DCC_FAILURE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_DCC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_dcc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcc_event(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i32, i8*, ...) @DP(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DRV_STATUS_DCC_DISABLE_ENABLE_PF, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = call i64 @BP_VN(%struct.bnx2x* %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FUNC_MF_CFG_FUNC_DISABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %12
  %24 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %25 = call i32 (i32, i8*, ...) @DP(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @MF_FUNC_DIS, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = call i32 @bnx2x_e1h_disable(%struct.bnx2x* %31)
  br label %44

33:                                               ; preds = %12
  %34 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %35 = call i32 (i32, i8*, ...) @DP(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @MF_FUNC_DIS, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = call i32 @bnx2x_e1h_enable(%struct.bnx2x* %42)
  br label %44

44:                                               ; preds = %33, %23
  %45 = load i32, i32* @DRV_STATUS_DCC_DISABLE_ENABLE_PF, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %2
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @DRV_STATUS_DCC_BANDWIDTH_ALLOCATION, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = call i32 @bnx2x_config_mf_bw(%struct.bnx2x* %55)
  %57 = load i32, i32* @DRV_STATUS_DCC_BANDWIDTH_ALLOCATION, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = load i32, i32* @DRV_MSG_CODE_DCC_FAILURE, align 4
  %67 = call i32 @bnx2x_fw_command(%struct.bnx2x* %65, i32 %66, i32 0)
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load i32, i32* @DRV_MSG_CODE_DCC_OK, align 4
  %71 = call i32 @bnx2x_fw_command(%struct.bnx2x* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_e1h_disable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_e1h_enable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_config_mf_bw(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
