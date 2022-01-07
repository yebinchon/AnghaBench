; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_set_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_set_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32 }

@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_MAC_LOOP = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_FORCE_LINK = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_25G_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT_GMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_set_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_phy_loopback(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %7 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BMCR_LOOPBACK, align 4
  %15 = load i32, i32* @BMCR_FULLDPLX, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BMCR_SPEED1000, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bnx2_write_phy(%struct.bnx2* %10, i32 %13, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = call i64 @bnx2_test_link(%struct.bnx2* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %41

36:                                               ; preds = %31
  %37 = call i32 @msleep(i32 100)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %28

41:                                               ; preds = %35, %28
  %42 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %43 = load i32, i32* @BNX2_EMAC_MODE, align 4
  %44 = call i32 @BNX2_RD(%struct.bnx2* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @BNX2_EMAC_MODE_PORT, align 4
  %46 = load i32, i32* @BNX2_EMAC_MODE_HALF_DUPLEX, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BNX2_EMAC_MODE_MAC_LOOP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BNX2_EMAC_MODE_FORCE_LINK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BNX2_EMAC_MODE_25G_MODE, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @BNX2_EMAC_MODE_PORT_GMII, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %61 = load i32, i32* @BNX2_EMAC_MODE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @BNX2_WR(%struct.bnx2* %60, i32 %61, i32 %62)
  %64 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %65 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %41, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @bnx2_test_link(%struct.bnx2*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
