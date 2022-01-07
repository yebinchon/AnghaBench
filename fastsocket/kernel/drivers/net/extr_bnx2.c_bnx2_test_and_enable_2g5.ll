; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_test_and_enable_2g5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_test_and_enable_2g5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32 }

@BNX2_PHY_FLAG_2_5G_CAPABLE = common dso_local global i32 0, align 4
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@MII_BNX2_BLK_ADDR = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_OVER1G = common dso_local global i32 0, align 4
@BCM5708S_UP1_2G5 = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_COMBO_IEEEB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_test_and_enable_2g5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_test_and_enable_2g5(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BNX2_PHY_FLAG_2_5G_CAPABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AUTONEG_SPEED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %22 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %28 = call i64 @BNX2_CHIP(%struct.bnx2* %27)
  %29 = load i64, i64* @BNX2_CHIP_5709, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %34 = load i32, i32* @MII_BNX2_BLK_ADDR_OVER1G, align 4
  %35 = call i32 @bnx2_write_phy(%struct.bnx2* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %38 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bnx2_read_phy(%struct.bnx2* %37, i32 %40, i32* %4)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @BCM5708S_UP1_2G5, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @BCM5708S_UP1_2G5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %51 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @bnx2_write_phy(%struct.bnx2* %50, i32 %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %46, %36
  %57 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %58 = call i64 @BNX2_CHIP(%struct.bnx2* %57)
  %59 = load i64, i64* @BNX2_CHIP_5709, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %63 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %64 = load i32, i32* @MII_BNX2_BLK_ADDR_COMBO_IEEEB0, align 4
  %65 = call i32 @bnx2_write_phy(%struct.bnx2* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
