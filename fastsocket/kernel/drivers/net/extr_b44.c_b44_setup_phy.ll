; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_setup_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i64, i32 }

@B44_PHY_ADDR_NO_PHY = common dso_local global i64 0, align 8
@B44_MII_ALEDCTRL = common dso_local global i32 0, align 4
@MII_ALEDCTRL_ALLMSK = common dso_local global i32 0, align 4
@B44_MII_TLEDCTRL = common dso_local global i32 0, align 4
@MII_TLEDCTRL_ENABLE = common dso_local global i32 0, align 4
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@B44_FLAG_PAUSE_AUTO = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*)* @b44_setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_setup_phy(%struct.b44* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %3, align 8
  %8 = load %struct.b44*, %struct.b44** %3, align 8
  %9 = call i32 @b44_wap54g10_workaround(%struct.b44* %8)
  %10 = load %struct.b44*, %struct.b44** %3, align 8
  %11 = getelementptr inbounds %struct.b44, %struct.b44* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @B44_PHY_ADDR_NO_PHY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %177

16:                                               ; preds = %1
  %17 = load %struct.b44*, %struct.b44** %3, align 8
  %18 = load i32, i32* @B44_MII_ALEDCTRL, align 4
  %19 = call i32 @b44_readphy(%struct.b44* %17, i32 %18, i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %175

22:                                               ; preds = %16
  %23 = load %struct.b44*, %struct.b44** %3, align 8
  %24 = load i32, i32* @B44_MII_ALEDCTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MII_ALEDCTRL_ALLMSK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @b44_writephy(%struct.b44* %23, i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %175

31:                                               ; preds = %22
  %32 = load %struct.b44*, %struct.b44** %3, align 8
  %33 = load i32, i32* @B44_MII_TLEDCTRL, align 4
  %34 = call i32 @b44_readphy(%struct.b44* %32, i32 %33, i32* %4)
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %175

37:                                               ; preds = %31
  %38 = load %struct.b44*, %struct.b44** %3, align 8
  %39 = load i32, i32* @B44_MII_TLEDCTRL, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MII_TLEDCTRL_ENABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @b44_writephy(%struct.b44* %38, i32 %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %175

46:                                               ; preds = %37
  %47 = load %struct.b44*, %struct.b44** %3, align 8
  %48 = getelementptr inbounds %struct.b44, %struct.b44* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %128, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ADVERTISE_CSMA, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.b44*, %struct.b44** %3, align 8
  %56 = getelementptr inbounds %struct.b44, %struct.b44* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @ADVERTISE_10HALF, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.b44*, %struct.b44** %3, align 8
  %67 = getelementptr inbounds %struct.b44, %struct.b44* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @ADVERTISE_10FULL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.b44*, %struct.b44** %3, align 8
  %78 = getelementptr inbounds %struct.b44, %struct.b44* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @ADVERTISE_100HALF, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %76
  %88 = load %struct.b44*, %struct.b44** %3, align 8
  %89 = getelementptr inbounds %struct.b44, %struct.b44* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @ADVERTISE_100FULL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.b44*, %struct.b44** %3, align 8
  %100 = getelementptr inbounds %struct.b44, %struct.b44* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %107 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.b44*, %struct.b44** %3, align 8
  %113 = load i32, i32* @MII_ADVERTISE, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @b44_writephy(%struct.b44* %112, i32 %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %175

118:                                              ; preds = %111
  %119 = load %struct.b44*, %struct.b44** %3, align 8
  %120 = load i32, i32* @MII_BMCR, align 4
  %121 = load i32, i32* @BMCR_ANENABLE, align 4
  %122 = load i32, i32* @BMCR_ANRESTART, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @b44_writephy(%struct.b44* %119, i32 %120, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %175

127:                                              ; preds = %118
  br label %174

128:                                              ; preds = %46
  %129 = load %struct.b44*, %struct.b44** %3, align 8
  %130 = load i32, i32* @MII_BMCR, align 4
  %131 = call i32 @b44_readphy(%struct.b44* %129, i32 %130, i32* %7)
  store i32 %131, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %175

134:                                              ; preds = %128
  %135 = load i32, i32* @BMCR_FULLDPLX, align 4
  %136 = load i32, i32* @BMCR_ANENABLE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @BMCR_SPEED100, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.b44*, %struct.b44** %3, align 8
  %144 = getelementptr inbounds %struct.b44, %struct.b44* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %134
  %150 = load i32, i32* @BMCR_SPEED100, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %134
  %154 = load %struct.b44*, %struct.b44** %3, align 8
  %155 = getelementptr inbounds %struct.b44, %struct.b44* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @BMCR_FULLDPLX, align 4
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %160, %153
  %165 = load %struct.b44*, %struct.b44** %3, align 8
  %166 = load i32, i32* @MII_BMCR, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @b44_writephy(%struct.b44* %165, i32 %166, i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %175

171:                                              ; preds = %164
  %172 = load %struct.b44*, %struct.b44** %3, align 8
  %173 = call i32 @b44_set_flow_ctrl(%struct.b44* %172, i32 0, i32 0)
  br label %174

174:                                              ; preds = %171, %127
  br label %175

175:                                              ; preds = %174, %170, %133, %126, %117, %45, %36, %30, %21
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %15
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @b44_wap54g10_workaround(%struct.b44*) #1

declare dso_local i32 @b44_readphy(%struct.b44*, i32, i32*) #1

declare dso_local i32 @b44_writephy(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_set_flow_ctrl(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
