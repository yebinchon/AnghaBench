; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm54xx_read_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm54xx_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i64, i32, i32, i64 }

@MII_BCM5400_AUXSTATUS = common dso_local global i32 0, align 4
@MII_BCM5400_AUXSTATUS_LINKMODE_MASK = common dso_local global i32 0, align 4
@MII_BCM5400_AUXSTATUS_LINKMODE_SHIFT = common dso_local global i32 0, align 4
@phy_BCM5400_link_table = common dso_local global i64** null, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm54xx_read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54xx_read_link(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %5 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %6 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %81

9:                                                ; preds = %1
  %10 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %11 = load i32, i32* @MII_BCM5400_AUXSTATUS, align 4
  %12 = call i32 @phy_read(%struct.mii_phy* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MII_BCM5400_AUXSTATUS_LINKMODE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @MII_BCM5400_AUXSTATUS_LINKMODE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load i64**, i64*** @phy_BCM5400_link_table, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %18, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load i64, i64* @DUPLEX_FULL, align 8
  br label %30

28:                                               ; preds = %9
  %29 = load i64, i64* @DUPLEX_HALF, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %33 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64**, i64*** @phy_BCM5400_link_table, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @SPEED_1000, align 4
  br label %59

44:                                               ; preds = %30
  %45 = load i64**, i64*** @phy_BCM5400_link_table, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @SPEED_100, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @SPEED_10, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i32 [ %43, %42 ], [ %58, %57 ]
  %61 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %62 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %64 = load i32, i32* @MII_LPA, align 4
  %65 = call i32 @phy_read(%struct.mii_phy* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %67 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DUPLEX_FULL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @LPA_PAUSE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %59
  %77 = phi i1 [ false, %59 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %80 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %1
  ret i32 0
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
