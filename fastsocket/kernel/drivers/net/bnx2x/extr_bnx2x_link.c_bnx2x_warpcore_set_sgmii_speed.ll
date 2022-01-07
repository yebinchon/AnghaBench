; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_sgmii_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_sgmii_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32, i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_RX66_CONTROL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i32 0, align 4
@MDIO_WC_REG_COMBO_IEEE0_MIICTRL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set SGMII AUTONEG\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Speed not supported: 0x%x\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"set SGMII force speed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"  (readback) %x\0A\00", align 1
@MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1 = common dso_local global i32 0, align 4
@MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i64, i64)* @bnx2x_warpcore_set_sgmii_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_set_sgmii_speed(%struct.bnx2x_phy* %0, %struct.link_params* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.link_params*, %struct.link_params** %6, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 0
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %9, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %18 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %19 = load i32, i32* @MDIO_WC_REG_RX66_CONTROL, align 4
  %20 = call i32 @bnx2x_cl45_read_and_write(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i32 %18, i32 %19, i32 -24577)
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %22 = load %struct.link_params*, %struct.link_params** %6, align 8
  %23 = call i32 @bnx2x_warpcore_set_lpi_passthrough(%struct.bnx2x_phy* %21, %struct.link_params* %22)
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SPEED_AUTO_NEG, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26, %4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %35 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %36 = load i32, i32* @MDIO_WC_REG_COMBO_IEEE0_MIICTRL, align 4
  %37 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32 4096)
  %38 = load i32, i32* @NETIF_MSG_LINK, align 4
  %39 = call i32 (i32, i8*, ...) @DP(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %93

40:                                               ; preds = %26
  %41 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %43 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %44 = load i32, i32* @MDIO_WC_REG_COMBO_IEEE0_MIICTRL, align 4
  %45 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %41, %struct.bnx2x_phy* %42, i32 %43, i32 %44, i32* %10)
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 52927
  store i32 %47, i32* %10, align 4
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %58 [
    i32 130, label %51
    i32 129, label %52
    i32 128, label %55
  ]

51:                                               ; preds = %40
  br label %64

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, 8192
  store i32 %54, i32* %10, align 4
  br label %64

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, 64
  store i32 %57, i32* %10, align 4
  br label %64

58:                                               ; preds = %40
  %59 = load i32, i32* @NETIF_MSG_LINK, align 4
  %60 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %61 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @DP(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %138

64:                                               ; preds = %55, %52, %51
  %65 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %66 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DUPLEX_FULL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, 256
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %75 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %76 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %77 = load i32, i32* @MDIO_WC_REG_COMBO_IEEE0_MIICTRL, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %74, %struct.bnx2x_phy* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @NETIF_MSG_LINK, align 4
  %81 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %82 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @DP(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %86 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %87 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %88 = load i32, i32* @MDIO_WC_REG_COMBO_IEEE0_MIICTRL, align 4
  %89 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %85, %struct.bnx2x_phy* %86, i32 %87, i32 %88, i32* %10)
  %90 = load i32, i32* @NETIF_MSG_LINK, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32, i8*, ...) @DP(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %73, %32
  %94 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %95 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %96 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %97 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, align 4
  %98 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %94, %struct.bnx2x_phy* %95, i32 %96, i32 %97, i32* %11)
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %11, align 4
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, 65354
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %102, %101
  %106 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %107 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %108 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %109 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %106, %struct.bnx2x_phy* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %113 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %114 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %115 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, align 4
  %116 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %112, %struct.bnx2x_phy* %113, i32 %114, i32 %115, i32* %12)
  %117 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %118 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %119 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %120 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, align 4
  %121 = load i32, i32* %12, align 4
  %122 = and i32 %121, -5
  %123 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %117, %struct.bnx2x_phy* %118, i32 %119, i32 %120, i32 %122)
  %124 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %125 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %126 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %127 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, 4
  %130 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %124, %struct.bnx2x_phy* %125, i32 %126, i32 %127, i32 %129)
  %131 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %132 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %133 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %134 = load i32, i32* @MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, align 4
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, 16
  %137 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %131, %struct.bnx2x_phy* %132, i32 %133, i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %105, %58
  ret void
}

declare dso_local i32 @bnx2x_cl45_read_and_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_warpcore_set_lpi_passthrough(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
