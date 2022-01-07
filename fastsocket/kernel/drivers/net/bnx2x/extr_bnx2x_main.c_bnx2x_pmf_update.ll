; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pmf_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pmf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pmf %d\0A\00", align 1
@bnx2x_wq = common dso_local global i32 0, align 4
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_TRAILING_EDGE_0 = common dso_local global i64 0, align 8
@HC_REG_LEADING_EDGE_0 = common dso_local global i64 0, align 8
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i64 0, align 8
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i64 0, align 8
@STATS_EVENT_PMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_pmf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pmf_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @BP_PORT(%struct.bnx2x* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DP(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @smp_mb()
  %17 = load i32, i32* @bnx2x_wq, align 4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 1
  %20 = call i32 @queue_delayed_work(i32 %17, i32* %19, i32 0)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i32 @bnx2x_dcbx_pmf_update(%struct.bnx2x* %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i32 @BP_VN(%struct.bnx2x* %23)
  %25 = add nsw i32 %24, 4
  %26 = shl i32 1, %25
  %27 = or i32 65295, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INT_BLOCK_HC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %1
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = load i64, i64* @HC_REG_TRAILING_EDGE_0, align 8
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @REG_WR(%struct.bnx2x* %35, i64 %40, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %44 = load i64, i64* @HC_REG_LEADING_EDGE_0, align 8
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @REG_WR(%struct.bnx2x* %43, i64 %48, i32 %49)
  br label %65

51:                                               ; preds = %1
  %52 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %53 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = load i64, i64* @IGU_REG_TRAILING_EDGE_LATCH, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @REG_WR(%struct.bnx2x* %56, i64 %57, i32 %58)
  %60 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %61 = load i64, i64* @IGU_REG_LEADING_EDGE_LATCH, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @REG_WR(%struct.bnx2x* %60, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %51
  br label %65

65:                                               ; preds = %64, %34
  %66 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %67 = load i32, i32* @STATS_EVENT_PMF, align 4
  %68 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %66, i32 %67)
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @bnx2x_dcbx_pmf_update(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
