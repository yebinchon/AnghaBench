; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_write_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_write_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_COMMAND_WRITE = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM_DISEXT = common dso_local global i32 0, align 4
@BNX2_EMAC_MDIO_COMM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32)* @bnx2_write_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_write_phy(%struct.bnx2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
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
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BNX2_EMAC_MDIO_COMM_COMMAND_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BNX2_EMAC_MDIO_COMM_START_BUSY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BNX2_EMAC_MDIO_COMM_DISEXT, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %49 = load i32, i32* @BNX2_EMAC_MDIO_COMM, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @BNX2_WR(%struct.bnx2* %48, i32 %49, i32 %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %67, %32
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 50
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = call i32 @udelay(i32 10)
  %57 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %58 = load i32, i32* @BNX2_EMAC_MDIO_COMM, align 4
  %59 = call i32 @BNX2_RD(%struct.bnx2* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @BNX2_EMAC_MDIO_COMM_START_BUSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = call i32 @udelay(i32 5)
  br label %70

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %52

70:                                               ; preds = %64, %52
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @BNX2_EMAC_MDIO_COMM_START_BUSY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %79

78:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %81 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %88 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %89 = call i32 @BNX2_RD(%struct.bnx2* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @BNX2_EMAC_MDIO_MODE_AUTO_POLL, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %94 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @BNX2_WR(%struct.bnx2* %93, i32 %94, i32 %95)
  %97 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %98 = load i32, i32* @BNX2_EMAC_MDIO_MODE, align 4
  %99 = call i32 @BNX2_RD(%struct.bnx2* %97, i32 %98)
  %100 = call i32 @udelay(i32 40)
  br label %101

101:                                              ; preds = %86, %79
  %102 = load i32, i32* %9, align 4
  ret i32 %102
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
