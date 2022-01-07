; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bnx2x = type { i32, i64, i64, i32, i32 }

@DRV_PULSE_SEQ_MASK = common dso_local global i32 0, align 4
@func_mb = common dso_local global %struct.TYPE_2__* null, align 8
@MCP_PULSE_SEQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"drv_pulse (0x%x) != mcp_pulse (0x%x)\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@STATS_EVENT_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bnx2x_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.bnx2x*
  store %struct.bnx2x* %8, %struct.bnx2x** %3, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_running(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = call i64 @IS_PF(%struct.bnx2x* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = call i32 @BP_NOMCP(%struct.bnx2x* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %65, label %23

23:                                               ; preds = %19
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = call i32 @BP_FW_MB_IDX(%struct.bnx2x* %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @DRV_PULSE_SEQ_MASK, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = call i32 @bnx2x_drv_pulse(%struct.bnx2x* %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SHMEM_RD(%struct.bnx2x* %40, i32 %46)
  %48 = load i32, i32* @MCP_PULSE_SEQ_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %23
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @MCP_PULSE_SEQ_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %53, %23
  br label %65

65:                                               ; preds = %64, %19, %15
  %66 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = load i32, i32* @STATS_EVENT_UPDATE, align 4
  %74 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = call i64 @IS_VF(%struct.bnx2x* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = call i32 @bnx2x_timer_sriov(%struct.bnx2x* %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 3
  %85 = load i64, i64* @jiffies, align 8
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @mod_timer(i32* %84, i64 %89)
  br label %91

91:                                               ; preds = %82, %14
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_drv_pulse(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_timer_sriov(%struct.bnx2x*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
