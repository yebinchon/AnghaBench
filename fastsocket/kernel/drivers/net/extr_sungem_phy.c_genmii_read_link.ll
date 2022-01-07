; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_genmii_read_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_genmii_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i64, i32, i32, i64 }

@MII_LPA = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @genmii_read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genmii_read_link(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %4 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %5 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %10 = load i32, i32* @MII_LPA, align 4
  %11 = call i32 @phy_read(%struct.mii_phy* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @LPA_10FULL, align 4
  %14 = load i32, i32* @LPA_100FULL, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i32, i32* @DUPLEX_FULL, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %21 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %8
  %23 = load i32, i32* @DUPLEX_HALF, align 4
  %24 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %25 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LPA_100FULL, align 4
  %29 = load i32, i32* @LPA_100HALF, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @SPEED_100, align 4
  %35 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %36 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @SPEED_10, align 4
  %39 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %40 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %43 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %1
  ret i32 0
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
