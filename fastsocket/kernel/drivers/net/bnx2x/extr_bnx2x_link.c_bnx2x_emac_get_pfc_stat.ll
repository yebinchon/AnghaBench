; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_emac_get_pfc_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_emac_get_pfc_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@GRCBASE_EMAC1 = common dso_local global i64 0, align 8
@GRCBASE_EMAC0 = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pfc statistic read from EMAC\0A\00", align 1
@EMAC_REG_RX_PFC_STATS_XOFF_RCVD = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XOFF_RCVD_COUNT = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XON_RCVD = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XON_RCVD_COUNT = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XOFF_SENT = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XOFF_SENT_COUNT = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XON_SENT = common dso_local global i64 0, align 8
@EMAC_REG_RX_PFC_STATS_XON_SENT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, i64*, i64*)* @bnx2x_emac_get_pfc_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_emac_get_pfc_stat(%struct.link_params* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.link_params*, %struct.link_params** %4, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @GRCBASE_EMAC1, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @GRCBASE_EMAC0, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %24 = load i32, i32* @NETIF_MSG_LINK, align 4
  %25 = call i32 @DP(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XOFF_RCVD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @REG_RD(%struct.bnx2x* %26, i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XOFF_RCVD_COUNT, align 8
  %32 = load i64, i64* %10, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %10, align 8
  %34 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XON_RCVD, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @REG_RD(%struct.bnx2x* %34, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XON_RCVD_COUNT, align 8
  %40 = load i64, i64* %9, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XOFF_SENT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @REG_RD(%struct.bnx2x* %47, i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XOFF_SENT_COUNT, align 8
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XON_SENT, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i64 @REG_RD(%struct.bnx2x* %55, i64 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* @EMAC_REG_RX_PFC_STATS_XON_SENT_COUNT, align 8
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 %65, i64* %67, align 8
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
