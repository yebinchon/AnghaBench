; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8705_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8705_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"read status 8705\0A\00", align 1
@MDIO_WIS_DEVAD = common dso_local global i32 0, align 4
@MDIO_WIS_REG_LASI_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"8705 LASI status 0x%x\0A\00", align 1
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_RX_SD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"8705 1.c809 val=0x%x\0A\00", align 1
@SPEED_10000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8705_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8705_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %10, align 8
  %14 = load i32, i32* @NETIF_MSG_LINK, align 4
  %15 = call i32 (i32, i8*, ...) @DP(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = load i32, i32* @MDIO_WIS_DEVAD, align 4
  %19 = load i32, i32* @MDIO_WIS_REG_LASI_STATUS, align 4
  %20 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i32 %18, i32 %19, i32* %8)
  %21 = load i32, i32* @NETIF_MSG_LINK, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, ...) @DP(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %26 = load i32, i32* @MDIO_WIS_DEVAD, align 4
  %27 = load i32, i32* @MDIO_WIS_REG_LASI_STATUS, align 4
  %28 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %24, %struct.bnx2x_phy* %25, i32 %26, i32 %27, i32* %8)
  %29 = load i32, i32* @NETIF_MSG_LINK, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i32, i8*, ...) @DP(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %34 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %35 = load i32, i32* @MDIO_PMA_REG_RX_SD, align 4
  %36 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32* %9)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %39 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %40 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 51209, i32* %8)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %43 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %44 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %41, %struct.bnx2x_phy* %42, i32 %43, i32 51209, i32* %8)
  %45 = load i32, i32* @NETIF_MSG_LINK, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, ...) @DP(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %3
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 512
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %55, %51, %3
  %60 = phi i1 [ false, %51 ], [ false, %3 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @SPEED_10000, align 4
  %66 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %67 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %69 = load %struct.link_params*, %struct.link_params** %5, align 8
  %70 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %71 = call i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %68, %struct.link_params* %69, %struct.link_vars* %70)
  br label %72

72:                                               ; preds = %64, %59
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
