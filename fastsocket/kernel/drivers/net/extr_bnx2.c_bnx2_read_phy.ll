; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_read_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_read_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_COMMAND_READ = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_DISEXT = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32*)* @bnx2_read_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_read_phy(%struct.bnx2* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %18 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %19 = call i32 @BNX2_RD(%struct.bnx2* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @BNX2_EMAC_MDIO_MODE_AUTO_POLL, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %25 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @BNX2_WR(%struct.bnx2* %24, i32 %25, i32 %26)
  %28 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %29 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %30 = call i32 @BNX2_RD(%struct.bnx2* %28, i32 %29)
  %31 = call i32 @udelay(i32 40)
  br label %32

32:                                               ; preds = %16, %3
  %33 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 21
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  %40 = load i32, i32* @BNX2_EMAC_MDIO_COMM_COMMAND_READ, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BNX2_EMAC_MDIO_COMM_DISEXT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BNX2_EMAC_MDIO_COMM_START_BUSY, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %47 = load i32, i32* @BNX2_EMAC_MDIO_COMM, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BNX2_WR(%struct.bnx2* %46, i32 %47, i32 %48)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %71, %32
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 50
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = call i32 @udelay(i32 10)
  %55 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %56 = load i32, i32* @BNX2_EMAC_MDIO_COMM, align 4
  %57 = call i32 @BNX2_RD(%struct.bnx2* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BNX2_EMAC_MDIO_COMM_START_BUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %53
  %63 = call i32 @udelay(i32 5)
  %64 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %65 = load i32, i32* @BNX2_EMAC_MDIO_COMM, align 4
  %66 = call i32 @BNX2_RD(%struct.bnx2* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @BNX2_EMAC_MDIO_COMM_DATA, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %50

74:                                               ; preds = %62, %50
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @BNX2_EMAC_MDIO_COMM_START_BUSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32*, i32** %6, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %88 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %95 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %96 = call i32 @BNX2_RD(%struct.bnx2* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @BNX2_EMAC_MDIO_MODE_AUTO_POLL, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %101 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @BNX2_WR(%struct.bnx2* %100, i32 %101, i32 %102)
  %104 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %105 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %106 = call i32 @BNX2_RD(%struct.bnx2* %104, i32 %105)
  %107 = call i32 @udelay(i32 40)
  br label %108

108:                                              ; preds = %93, %86
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
