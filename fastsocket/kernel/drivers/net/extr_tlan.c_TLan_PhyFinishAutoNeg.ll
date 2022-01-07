; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_PhyFinishAutoNeg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_PhyFinishAutoNeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i64, i64, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@MII_GEN_STS = common dso_local global i32 0, align 4
@MII_GS_AUTOCMPLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TLAN:  Giving autonegotiation more time.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"TLAN:  Please check that your adapter has\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"TLAN:  been properly connected to a HUB or Switch.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"TLAN:  Trying to establish link in the background...\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_FINISH_AN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"TLAN: %s: Autonegotiation complete.\0A\00", align 1
@MII_AN_ADV = common dso_local global i32 0, align 4
@MII_AN_LPA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@TLAN_ADAPTER_USE_INTERN_10 = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1FRAG = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1CHAN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_PHY_EN = common dso_local global i32 0, align 4
@TLAN_NET_CONFIG = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_PDOWN = common dso_local global i32 0, align 4
@TLAN_DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_GEN_CTL = common dso_local global i32 0, align 4
@MII_GC_AUTOENB = common dso_local global i32 0, align 4
@MII_GC_DUPLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"TLAN:  Starting internal PHY with FULL-DUPLEX\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"TLAN:  Starting internal PHY with HALF-DUPLEX\0A\00", align 1
@TLAN_TIMER_FINISH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @TLan_PhyFinishAutoNeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_PhyFinishAutoNeg(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MII_GEN_STS, align 4
  %23 = call i32 @TLan_MiiReadReg(%struct.net_device* %20, i32 %21, i32 %22, i32* %9)
  %24 = call i32 @udelay(i32 1000)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MII_GEN_STS, align 4
  %28 = call i32 @TLan_MiiReadReg(%struct.net_device* %25, i32 %26, i32 %27, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MII_GS_AUTOCMPLT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 8, %46
  %48 = load i32, i32* @TLAN_TIMER_PHY_FINISH_AN, align 4
  %49 = call i32 @TLan_SetTimer(%struct.net_device* %45, i32 %47, i32 %48)
  br label %165

50:                                               ; preds = %1
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MII_AN_ADV, align 4
  %58 = call i32 @TLan_MiiReadReg(%struct.net_device* %55, i32 %56, i32 %57, i32* %4)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MII_AN_LPA, align 4
  %62 = call i32 @TLan_MiiReadReg(%struct.net_device* %59, i32 %60, i32 %61, i32* %5)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %63, %64
  %66 = and i32 %65, 992
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 256
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %50
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  br label %87

74:                                               ; preds = %50
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 64
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %78, %74
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 384
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TLAN_ADAPTER_USE_INTERN_10, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %91
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %109 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %6, align 4
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @TLan_DioWrite16(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* @HZ, align 4
  %121 = mul nsw i32 400, %120
  %122 = sdiv i32 %121, 1000
  %123 = load i32, i32* @TLAN_TIMER_PHY_PDOWN, align 4
  %124 = call i32 @TLan_SetTimer(%struct.net_device* %119, i32 %122, i32 %123)
  br label %165

125:                                              ; preds = %100, %91, %87
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %159

130:                                              ; preds = %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %137, %138
  %140 = and i32 %139, 64
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %136, %130
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @MII_GEN_CTL, align 4
  %146 = load i32, i32* @MII_GC_AUTOENB, align 4
  %147 = load i32, i32* @MII_GC_DUPLEX, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @TLan_MiiWriteReg(%struct.net_device* %143, i32 %144, i32 %145, i32 %148)
  %150 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %158

151:                                              ; preds = %136
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @MII_GEN_CTL, align 4
  %155 = load i32, i32* @MII_GC_AUTOENB, align 4
  %156 = call i32 @TLan_MiiWriteReg(%struct.net_device* %152, i32 %153, i32 %154, i32 %155)
  %157 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %158

158:                                              ; preds = %151, %142
  br label %159

159:                                              ; preds = %158, %125
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = load i32, i32* @HZ, align 4
  %162 = sdiv i32 %161, 10
  %163 = load i32, i32* @TLAN_TIMER_FINISH_RESET, align 4
  %164 = call i32 @TLan_SetTimer(%struct.net_device* %160, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %105, %44
  ret void
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLan_MiiReadReg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @TLan_SetTimer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @TLan_DioWrite16(i32, i32, i32) #1

declare dso_local i32 @TLan_MiiWriteReg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
