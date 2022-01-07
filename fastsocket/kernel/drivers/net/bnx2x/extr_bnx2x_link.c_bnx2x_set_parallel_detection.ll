; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_parallel_detection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_parallel_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32, i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_REG_BANK_SERDES_DIGITAL = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL2 = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL2_PRL_DT_EN = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"phy->speed_cap_mask = 0x%x, control2 = 0x%x\0A\00", align 1
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"XGXS\0A\00", align 1
@MDIO_REG_BANK_10G_PARALLEL_DETECT = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_LINK = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_LINK_CNT = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_CONTROL = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_CONTROL_PARDET10G_EN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_XGXS_BLOCK2 = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_UNICORE_MODE_10G = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_UNICORE_MODE_10G_CX4_XGXS = common dso_local global i32 0, align 4
@MDIO_XGXS_BLOCK2_UNICORE_MODE_10G_HIGIG_XGXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_set_parallel_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_parallel_detection(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %7 = load %struct.link_params*, %struct.link_params** %4, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 0
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %12 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %13 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL2, align 4
  %14 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %10, %struct.bnx2x_phy* %11, i32 %12, i32 %13, i32* %6)
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL2_PRL_DT_EN, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL2_PRL_DT_EN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* @NETIF_MSG_LINK, align 4
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %39 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %40 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL2, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %30
  %49 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %48
  %56 = load i32, i32* @NETIF_MSG_LINK, align 4
  %57 = call i32 (i32, i8*, ...) @DP(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %59 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %60 = load i32, i32* @MDIO_REG_BANK_10G_PARALLEL_DETECT, align 4
  %61 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_LINK, align 4
  %62 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_LINK_CNT, align 4
  %63 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %58, %struct.bnx2x_phy* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %65 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %66 = load i32, i32* @MDIO_REG_BANK_10G_PARALLEL_DETECT, align 4
  %67 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_CONTROL, align 4
  %68 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %64, %struct.bnx2x_phy* %65, i32 %66, i32 %67, i32* %6)
  %69 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_CONTROL_PARDET10G_EN, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %73 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %74 = load i32, i32* @MDIO_REG_BANK_10G_PARALLEL_DETECT, align 4
  %75 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_CONTROL, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %72, %struct.bnx2x_phy* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %79 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %80 = load i32, i32* @MDIO_REG_BANK_XGXS_BLOCK2, align 4
  %81 = load i32, i32* @MDIO_XGXS_BLOCK2_UNICORE_MODE_10G, align 4
  %82 = load i32, i32* @MDIO_XGXS_BLOCK2_UNICORE_MODE_10G_CX4_XGXS, align 4
  %83 = load i32, i32* @MDIO_XGXS_BLOCK2_UNICORE_MODE_10G_HIGIG_XGXS, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %78, %struct.bnx2x_phy* %79, i32 %80, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %55, %48, %30
  ret void
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
