; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8073_resolve_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8073_resolve_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64 }

@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@BNX2X_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LP = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Ext PHY CL37 pause result 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8073_resolve_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_8073_resolve_fc(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SPEED_10, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPEED_100, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19, %3
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %30 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %70

31:                                               ; preds = %19
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %33 = load %struct.link_params*, %struct.link_params** %5, align 8
  %34 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %35 = call i64 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %32, %struct.link_params* %33, %struct.link_vars* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %31
  %38 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %39 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BNX2X_FLOW_CTRL_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %46 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %47 = load i32, i32* @MDIO_AN_REG_CL37_FC_LD, align 4
  %48 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %44, %struct.bnx2x_phy* %45, i32 %46, i32 %47, i32* %9)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %50 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %51 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %52 = load i32, i32* @MDIO_AN_REG_CL37_FC_LP, align 4
  %53 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %49, %struct.bnx2x_phy* %50, i32 %51, i32 %52, i32* %10)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 5
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %60 = and i32 %58, %59
  %61 = ashr i32 %60, 7
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @bnx2x_pause_resolve(%struct.link_vars* %64, i32 %65)
  %67 = load i32, i32* @NETIF_MSG_LINK, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @DP(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %25, %43, %37, %31
  ret void
}

declare dso_local i64 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_pause_resolve(%struct.link_vars*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
