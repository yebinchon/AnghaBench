; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_check_fallback_to_cl37.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_check_fallback_to_cl37.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bnx2x_check_fallback_to_cl37\0A\00", align 1
@MDIO_REG_BANK_RX0 = common dso_local global i32 0, align 4
@MDIO_RX0_RX_STATUS = common dso_local global i32 0, align 4
@MDIO_RX0_RX_STATUS_SIGDET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Signal is not detected. Restoring CL73.rx_status(0x80b0) = 0x%x\0A\00", align 1
@MDIO_REG_BANK_CL73_IEEEB0 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_USERB0 = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_USTAT1 = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"CL73 state-machine is not stable. ustat_val(0x8371) = 0x%x\0A\00", align 1
@MDIO_REG_BANK_REMOTE_PHY = common dso_local global i32 0, align 4
@MDIO_REMOTE_PHY_MISC_RX_STATUS = common dso_local global i32 0, align 4
@MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG = common dso_local global i32 0, align 4
@MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"No CL37 FSM were received. misc_rx_status(0x8330) = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Disabling CL73, and restarting CL37 autoneg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_check_fallback_to_cl37 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_check_fallback_to_cl37(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %5, align 8
  %12 = load i32, i32* @NETIF_MSG_LINK, align 4
  %13 = call i32 (i32, i8*, ...) @DP(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %16 = load i32, i32* @MDIO_REG_BANK_RX0, align 4
  %17 = load i32, i32* @MDIO_RX0_RX_STATUS, align 4
  %18 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %14, %struct.bnx2x_phy* %15, i32 %16, i32 %17, i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MDIO_RX0_RX_STATUS_SIGDET, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @MDIO_RX0_RX_STATUS_SIGDET, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, i32* @NETIF_MSG_LINK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i8*, ...) @DP(i32 %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %30 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB0, align 4
  %31 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL, align 4
  %32 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN, align 4
  %33 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32 %32)
  br label %83

34:                                               ; preds = %2
  %35 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %36 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %37 = load i32, i32* @MDIO_REG_BANK_CL73_USERB0, align 4
  %38 = load i32, i32* @MDIO_CL73_USERB0_CL73_USTAT1, align 4
  %39 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %35, %struct.bnx2x_phy* %36, i32 %37, i32 %38, i32* %7)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK, align 4
  %42 = load i32, i32* @MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = load i32, i32* @MDIO_CL73_USERB0_CL73_USTAT1_LINK_STATUS_CHECK, align 4
  %46 = load i32, i32* @MDIO_CL73_USERB0_CL73_USTAT1_AN_GOOD_CHECK_BAM37, align 4
  %47 = or i32 %45, %46
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @NETIF_MSG_LINK, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i8*, ...) @DP(i32 %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %83

53:                                               ; preds = %34
  %54 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %55 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %56 = load i32, i32* @MDIO_REG_BANK_REMOTE_PHY, align 4
  %57 = load i32, i32* @MDIO_REMOTE_PHY_MISC_RX_STATUS, align 4
  %58 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %54, %struct.bnx2x_phy* %55, i32 %56, i32 %57, i32* %8)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG, align 4
  %61 = load i32, i32* @MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = load i32, i32* @MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_OVER1G_MSG, align 4
  %65 = load i32, i32* @MDIO_REMOTE_PHY_MISC_RX_STATUS_CL37_FSM_RECEIVED_BRCM_OUI_MSG, align 4
  %66 = or i32 %64, %65
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32, i32* @NETIF_MSG_LINK, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, ...) @DP(i32 %69, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %83

72:                                               ; preds = %53
  %73 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %74 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %75 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB0, align 4
  %76 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL, align 4
  %77 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %73, %struct.bnx2x_phy* %74, i32 %75, i32 %76, i32 0)
  %78 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %79 = load %struct.link_params*, %struct.link_params** %4, align 8
  %80 = call i32 @bnx2x_restart_autoneg(%struct.bnx2x_phy* %78, %struct.link_params* %79, i32 0)
  %81 = load i32, i32* @NETIF_MSG_LINK, align 4
  %82 = call i32 (i32, i8*, ...) @DP(i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %72, %68, %49, %24
  ret void
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_restart_autoneg(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
