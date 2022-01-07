; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_xgxs_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_xgxs_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"XGXS 10G loopback enable\0A\00", align 1
@NIG_REG_XGXS0_CTRL_MD_DEVAD = common dso_local global i64 0, align 8
@MDIO_REG_BANK_AER_BLOCK = common dso_local global i64 0, align 8
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB0 = common dso_local global i64 0, align 8
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"XGXS 1G loopback enable\0A\00", align 1
@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i64 0, align 8
@MDIO_COMBO_IEEE0_MII_CONTROL = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_set_xgxs_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_xgxs_loopback(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  store %struct.bnx2x* %14, %struct.bnx2x** %6, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPEED_1000, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @NETIF_MSG_LINK, align 4
  %22 = call i32 @DP(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = call i32 @CHIP_IS_E3(%struct.bnx2x* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %28 = load i64, i64* @NIG_REG_XGXS0_CTRL_MD_DEVAD, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 24
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @REG_RD(%struct.bnx2x* %27, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %35 = load i64, i64* @NIG_REG_XGXS0_CTRL_MD_DEVAD, align 8
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 24
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @REG_WR(%struct.bnx2x* %34, i64 %39, i32 5)
  br label %41

41:                                               ; preds = %26, %20
  %42 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %44 = load i64, i64* @MDIO_REG_BANK_AER_BLOCK, align 8
  %45 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %46 = and i32 %45, 15
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 5, i64 %48, i32 10240)
  %50 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %51 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %52 = load i64, i64* @MDIO_REG_BANK_CL73_IEEEB0, align 8
  %53 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL, align 4
  %54 = and i32 %53, 15
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %50, %struct.bnx2x_phy* %51, i32 5, i64 %56, i32 24641)
  %58 = call i32 @msleep(i32 200)
  %59 = load %struct.link_params*, %struct.link_params** %4, align 8
  %60 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %61 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %59, %struct.bnx2x_phy* %60)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %63 = call i32 @CHIP_IS_E3(%struct.bnx2x* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %41
  %66 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %67 = load i64, i64* @NIG_REG_XGXS0_CTRL_MD_DEVAD, align 8
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 24
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @REG_WR(%struct.bnx2x* %66, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %41
  br label %97

75:                                               ; preds = %2
  %76 = load i32, i32* @NETIF_MSG_LINK, align 4
  %77 = call i32 @DP(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %79 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %80 = load i64, i64* @MDIO_REG_BANK_COMBO_IEEE0, align 8
  %81 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %78, %struct.bnx2x_phy* %79, i32 5, i64 %84, i32* %8)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %87 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %88 = load i64, i64* @MDIO_REG_BANK_COMBO_IEEE0, align 8
  %89 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %90 = and i32 %89, 15
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_LOOPBACK, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %86, %struct.bnx2x_phy* %87, i32 5, i64 %92, i32 %95)
  br label %97

97:                                               ; preds = %75, %74
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
