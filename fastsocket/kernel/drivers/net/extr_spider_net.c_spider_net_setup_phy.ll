; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_setup_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32, %struct.mii_phy }
%struct.mii_phy = type { i16 (i32, i32, i32)*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SPIDER_NET_GDTDMASEL = common dso_local global i32 0, align 4
@SPIDER_NET_DMASEL_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GPCCTRL = common dso_local global i32 0, align 4
@SPIDER_NET_PHY_CTRL_VALUE = common dso_local global i32 0, align 4
@spider_net_write_phy = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Found %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_setup_phy(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i16, align 2
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %5 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %6 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %5, i32 0, i32 1
  store %struct.mii_phy* %6, %struct.mii_phy** %3, align 8
  %7 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %8 = load i32, i32* @SPIDER_NET_GDTDMASEL, align 4
  %9 = load i32, i32* @SPIDER_NET_DMASEL_VALUE, align 4
  %10 = call i32 @spider_net_write_reg(%struct.spider_net_card* %7, i32 %8, i32 %9)
  %11 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %12 = load i32, i32* @SPIDER_NET_GPCCTRL, align 4
  %13 = load i32, i32* @SPIDER_NET_PHY_CTRL_VALUE, align 4
  %14 = call i32 @spider_net_write_reg(%struct.spider_net_card* %11, i32 %12, i32 %13)
  %15 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %16 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %19 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %21 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %20, i32 0, i32 0
  store i16 (i32, i32, i32)* @spider_net_read_phy, i16 (i32, i32, i32)** %21, align 8
  %22 = load i32, i32* @spider_net_write_phy, align 4
  %23 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %24 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %26 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %64, %1
  %28 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %29 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 31
  br i1 %31, label %32, label %69

32:                                               ; preds = %27
  %33 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %34 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %37 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MII_BMSR, align 4
  %40 = call zeroext i16 @spider_net_read_phy(i32 %35, i32 %38, i32 %39)
  store i16 %40, i16* %4, align 2
  %41 = load i16, i16* %4, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %32
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %46, 65535
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %50 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %51 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mii_phy_probe(%struct.mii_phy* %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %57 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %69

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %44, %32
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %66 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %27

69:                                               ; preds = %55, %27
  ret i32 0
}

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local zeroext i16 @spider_net_read_phy(i32, i32, i32) #1

declare dso_local i32 @mii_phy_probe(%struct.mii_phy*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
