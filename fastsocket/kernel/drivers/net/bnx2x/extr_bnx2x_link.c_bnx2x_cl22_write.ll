; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_cl22_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_cl22_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32, i64 }

@EMAC_REG_EMAC_MDIO_MODE = common dso_local global i64 0, align 8
@EMAC_MDIO_MODE_CLAUSE_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_WRITE_22 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"write phy register failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32)* @bnx2x_cl22_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cl22_write(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @REG_RD(%struct.bnx2x* %13, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %22 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @EMAC_MDIO_MODE_CLAUSE_45, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @REG_WR(%struct.bnx2x* %20, i64 %25, i32 %29)
  %31 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %32 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 21
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_WRITE_22, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @REG_WR(%struct.bnx2x* %44, i64 %49, i32 %50)
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %71, %4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 50
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = call i32 @udelay(i32 10)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %58 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %59 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @REG_RD(%struct.bnx2x* %57, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = call i32 @udelay(i32 5)
  br label %74

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %52

74:                                               ; preds = %68, %52
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @NETIF_MSG_LINK, align 4
  %81 = call i32 @DP(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EFAULT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %87 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @REG_WR(%struct.bnx2x* %85, i64 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
