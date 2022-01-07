; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_test_and_disable_2g5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_test_and_disable_2g5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_PHY_FLAG_2_5G_CAPABLE = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@MII_BNX2_BLK_ADDR = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_OVER1G = common dso_local global i32 0, align 4
@BCM5708S_UP1_2G5 = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_COMBO_IEEEB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_test_and_disable_2g5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_test_and_disable_2g5(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BNX2_PHY_FLAG_2_5G_CAPABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %15 = call i64 @BNX2_CHIP(%struct.bnx2* %14)
  %16 = load i64, i64* @BNX2_CHIP_5709, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %21 = load i32, i32* @MII_BNX2_BLK_ADDR_OVER1G, align 4
  %22 = call i32 @bnx2_write_phy(%struct.bnx2* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bnx2_read_phy(%struct.bnx2* %24, i32 %27, i32* %4)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BCM5708S_UP1_2G5, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load i32, i32* @BCM5708S_UP1_2G5, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %39 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @bnx2_write_phy(%struct.bnx2* %38, i32 %41, i32 %42)
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %23
  %45 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %46 = call i64 @BNX2_CHIP(%struct.bnx2* %45)
  %47 = load i64, i64* @BNX2_CHIP_5709, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %51 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %52 = load i32, i32* @MII_BNX2_BLK_ADDR_COMBO_IEEEB0, align 4
  %53 = call i32 @bnx2_write_phy(%struct.bnx2* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
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
