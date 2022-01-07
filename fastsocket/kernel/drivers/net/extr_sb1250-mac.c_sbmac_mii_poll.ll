; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_mii_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbmac_mii_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sbmac_softc = type { i64, i64, i64, i32, i32, i64, i32, %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64, i32 }

@sbmac_speed_none = common dso_local global i64 0, align 8
@sbmac_duplex_none = common dso_local global i64 0, align 8
@sbmac_fc_disabled = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s: link unavailable\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@sbmac_fc_frame = common dso_local global i32 0, align 4
@sbmac_fc_collision = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: link available: %dbase-%cD\0A\00", align 1
@sbmac_state_off = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: restarting channel because PHY state changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sbmac_mii_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbmac_mii_poll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sbmac_softc*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.sbmac_softc* @netdev_priv(%struct.net_device* %12)
  store %struct.sbmac_softc* %13, %struct.sbmac_softc** %3, align 8
  %14 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %15 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %14, i32 0, i32 7
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %4, align 8
  %17 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %26 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %42 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %1
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %191

61:                                               ; preds = %57, %54, %51, %1
  %62 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %74 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* @sbmac_speed_none, align 8
  %76 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %77 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @sbmac_duplex_none, align 8
  %79 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %80 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i8*, i8** @sbmac_fc_disabled, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %84 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %86 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %85, i32 0, i32 3
  store i32 -1, i32* %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %69, %66
  br label %191

92:                                               ; preds = %61
  %93 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DUPLEX_FULL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %100 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @sbmac_fc_frame, align 4
  store i32 %104, i32* %6, align 4
  br label %108

105:                                              ; preds = %98
  %106 = load i8*, i8** @sbmac_fc_disabled, align 8
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %103
  br label %111

109:                                              ; preds = %92
  %110 = load i32, i32* @sbmac_fc_collision, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %113 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %114, %115
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %122 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DUPLEX_FULL, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 70, i32 72
  %131 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %120, i64 %123, i32 %130)
  %132 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %133 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %132, i32 0, i32 6
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %137 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %140 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %142 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %145 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %148 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %150 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %153 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %155 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %158 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %111
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %164, %161, %111
  %168 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %169 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @sbmac_state_off, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %167
  %174 = load i32, i32* @debug, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load %struct.net_device*, %struct.net_device** %2, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %176, %173
  %182 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %183 = call i32 @sbmac_channel_stop(%struct.sbmac_softc* %182)
  %184 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %185 = call i32 @sbmac_channel_start(%struct.sbmac_softc* %184)
  br label %186

186:                                              ; preds = %181, %167, %164
  %187 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %188 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %187, i32 0, i32 6
  %189 = load i64, i64* %5, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  br label %191

191:                                              ; preds = %186, %91, %60
  ret void
}

declare dso_local %struct.sbmac_softc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sbmac_channel_stop(%struct.sbmac_softc*) #1

declare dso_local i32 @sbmac_channel_start(%struct.sbmac_softc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
