; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_cl22_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_cl22_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32, i64 }

@EMAC_REG_EMAC_MDIO_MODE = common dso_local global i64 0, align 8
@EMAC_MDIO_MODE_CLAUSE_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_READ_22 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@EMAC_MDIO_COMM_DATA = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"read phy register failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32*)* @bnx2x_cl22_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cl22_read(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
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
  %38 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_READ_22, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %44 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @REG_WR(%struct.bnx2x* %42, i64 %47, i32 %48)
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %73, %4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 50
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = call i32 @udelay(i32 10)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %56 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %57 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @REG_RD(%struct.bnx2x* %55, i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @EMAC_MDIO_COMM_DATA, align 4
  %69 = and i32 %67, %68
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = call i32 @udelay(i32 5)
  br label %76

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %50

76:                                               ; preds = %66, %50
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @NETIF_MSG_LINK, align 4
  %83 = call i32 @DP(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %84 = load i32*, i32** %8, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @EFAULT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %89 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %90 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EMAC_REG_EMAC_MDIO_MODE, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @REG_WR(%struct.bnx2x* %88, i64 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  ret i32 %96
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
