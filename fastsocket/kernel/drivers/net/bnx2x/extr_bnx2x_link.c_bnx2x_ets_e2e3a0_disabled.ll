; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e2e3a0_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e2e3a0_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ETS E2E3 disabled configuration\0A\00", align 1
@NIG_REG_P0_TX_ARB_PRIORITY_CLIENT = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_NUM_STRICT_ARB_SLOTS = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i32 0, align 4
@PBF_REG_HIGH_PRIORITY_COS_NUM = common dso_local global i32 0, align 4
@PBF_REG_ETS_ENABLED = common dso_local global i32 0, align 4
@PBF_REG_COS0_WEIGHT = common dso_local global i32 0, align 4
@PBF_REG_COS1_WEIGHT = common dso_local global i32 0, align 4
@PBF_REG_COS0_UPPER_BOUND = common dso_local global i32 0, align 4
@PBF_REG_COS1_UPPER_BOUND = common dso_local global i32 0, align 4
@PBF_REG_NUM_STRICT_ARB_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*)* @bnx2x_ets_e2e3a0_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ets_e2e3a0_disabled(%struct.link_params* %0) #0 {
  %2 = alloca %struct.link_params*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %2, align 8
  %4 = load %struct.link_params*, %struct.link_params** %2, align 8
  %5 = getelementptr inbounds %struct.link_params, %struct.link_params* %4, i32 0, i32 0
  %6 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  store %struct.bnx2x* %6, %struct.bnx2x** %3, align 8
  %7 = load i32, i32* @NETIF_MSG_LINK, align 4
  %8 = call i32 @DP(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load i32, i32* @NIG_REG_P0_TX_ARB_PRIORITY_CLIENT, align 4
  %11 = call i32 @REG_WR(%struct.bnx2x* %9, i32 %10, i32 18056)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, align 4
  %14 = call i32 @REG_WR(%struct.bnx2x* %12, i32 %13, i32 7)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 4
  %17 = call i32 @REG_WR(%struct.bnx2x* %15, i32 %16, i32 0)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* @NIG_REG_P0_TX_ARB_NUM_STRICT_ARB_SLOTS, align 4
  %20 = call i32 @REG_WR(%struct.bnx2x* %18, i32 %19, i32 256)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load i32, i32* @NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP, align 4
  %23 = call i32 @REG_WR(%struct.bnx2x* %21, i32 %22, i32 0)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, align 4
  %26 = call i32 @REG_WR(%struct.bnx2x* %24, i32 %25, i32 0)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, align 4
  %29 = call i32 @REG_WR(%struct.bnx2x* %27, i32 %28, i32 0)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, align 4
  %32 = call i32 @REG_WR(%struct.bnx2x* %30, i32 %31, i32 0)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, align 4
  %35 = call i32 @REG_WR(%struct.bnx2x* %33, i32 %34, i32 0)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = load i32, i32* @PBF_REG_HIGH_PRIORITY_COS_NUM, align 4
  %38 = call i32 @REG_WR(%struct.bnx2x* %36, i32 %37, i32 0)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = load i32, i32* @PBF_REG_ETS_ENABLED, align 4
  %41 = call i32 @REG_WR(%struct.bnx2x* %39, i32 %40, i32 0)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = load i32, i32* @PBF_REG_COS0_WEIGHT, align 4
  %44 = call i32 @REG_WR(%struct.bnx2x* %42, i32 %43, i32 10000)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i32, i32* @PBF_REG_COS1_WEIGHT, align 4
  %47 = call i32 @REG_WR(%struct.bnx2x* %45, i32 %46, i32 10000)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i32, i32* @PBF_REG_COS0_UPPER_BOUND, align 4
  %50 = call i32 @REG_WR(%struct.bnx2x* %48, i32 %49, i32 10000000)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = load i32, i32* @PBF_REG_COS1_UPPER_BOUND, align 4
  %53 = call i32 @REG_WR(%struct.bnx2x* %51, i32 %52, i32 10000000)
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = load i32, i32* @PBF_REG_NUM_STRICT_ARB_SLOTS, align 4
  %56 = call i32 @REG_WR(%struct.bnx2x* %54, i32 %55, i32 0)
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
