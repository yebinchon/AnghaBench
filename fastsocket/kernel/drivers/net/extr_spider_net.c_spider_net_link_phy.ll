; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_link_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_link_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i64, i32, %struct.TYPE_6__*, i32, %struct.mii_phy }
%struct.TYPE_6__ = type { i32 }
%struct.mii_phy = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*, i32)* }

@SPIDER_NET_ANEG_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: link is down trying to bring it up\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SPIDER_NET_ANEG_TIMER = common dso_local global i64 0, align 8
@SPIDER_NET_GMACST = common dso_local global i32 0, align 4
@SPIDER_NET_GMACINTEN = common dso_local global i32 0, align 4
@SPIDER_NET_GMACMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: link up, %i Mbps, %s-duplex %sautoneg.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @spider_net_link_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_link_phy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.mii_phy*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.spider_net_card*
  store %struct.spider_net_card* %6, %struct.spider_net_card** %3, align 8
  %7 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %8 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %7, i32 0, i32 4
  store %struct.mii_phy* %8, %struct.mii_phy** %4, align 8
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %10 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPIDER_NET_ANEG_TIMEOUT, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %82

14:                                               ; preds = %1
  %15 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %16 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %22 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %73 [
    i32 130, label %24
    i32 129, label %46
    i32 128, label %68
  ]

24:                                               ; preds = %14
  %25 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %26 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.mii_phy*, i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %35 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %39, align 8
  %41 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %42 = call i32 %40(%struct.mii_phy* %41, i32 1)
  br label %43

43:                                               ; preds = %33, %24
  %44 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %45 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %44, i32 0, i32 1
  store i32 129, i32* %45, align 8
  br label %73

46:                                               ; preds = %14
  %47 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %48 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.mii_phy*, i32)* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %57 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %61, align 8
  %63 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %64 = call i32 %62(%struct.mii_phy* %63, i32 0)
  br label %65

65:                                               ; preds = %55, %46
  %66 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %67 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %66, i32 0, i32 1
  store i32 128, i32* %67, align 8
  br label %73

68:                                               ; preds = %14
  %69 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %70 = call i32 @spider_net_setup_aneg(%struct.spider_net_card* %69)
  %71 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %72 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %71, i32 0, i32 1
  store i32 130, i32* %72, align 8
  br label %73

73:                                               ; preds = %14, %68, %65, %43
  %74 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %75 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %77 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %76, i32 0, i32 3
  %78 = load i64, i64* @jiffies, align 8
  %79 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @mod_timer(i32* %77, i64 %80)
  br label %159

82:                                               ; preds = %1
  %83 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %84 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*)** %88, align 8
  %90 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %91 = call i32 %89(%struct.mii_phy* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %82
  %94 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %95 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %99 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %98, i32 0, i32 3
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @mod_timer(i32* %99, i64 %102)
  br label %159

104:                                              ; preds = %82
  %105 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %106 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32 (%struct.mii_phy*)*, i32 (%struct.mii_phy*)** %110, align 8
  %112 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %113 = call i32 %111(%struct.mii_phy* %112)
  %114 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %115 = load i32, i32* @SPIDER_NET_GMACST, align 4
  %116 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %117 = load i32, i32* @SPIDER_NET_GMACST, align 4
  %118 = call i32 @spider_net_read_reg(%struct.spider_net_card* %116, i32 %117)
  %119 = call i32 @spider_net_write_reg(%struct.spider_net_card* %114, i32 %115, i32 %118)
  %120 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %121 = load i32, i32* @SPIDER_NET_GMACINTEN, align 4
  %122 = call i32 @spider_net_write_reg(%struct.spider_net_card* %120, i32 %121, i32 4)
  %123 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %124 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 1000
  br i1 %126, label %127, label %131

127:                                              ; preds = %104
  %128 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %129 = load i32, i32* @SPIDER_NET_GMACMODE, align 4
  %130 = call i32 @spider_net_write_reg(%struct.spider_net_card* %128, i32 %129, i32 1)
  br label %135

131:                                              ; preds = %104
  %132 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %133 = load i32, i32* @SPIDER_NET_GMACMODE, align 4
  %134 = call i32 @spider_net_write_reg(%struct.spider_net_card* %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %137 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %139 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %144 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %147 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %152 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %153 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 1
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %158 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %145, i8* %151, i8* %157)
  br label %159

159:                                              ; preds = %135, %93, %73
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spider_net_setup_aneg(%struct.spider_net_card*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
