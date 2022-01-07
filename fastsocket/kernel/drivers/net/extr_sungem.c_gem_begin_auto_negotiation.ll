; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_begin_auto_negotiation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_begin_auto_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, i32, i32, i64, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32)* }
%struct.ethtool_cmd = type { i64, i32, i32, i32 }

@phy_mii_mdio0 = common dso_local global i64 0, align 8
@phy_mii_mdio1 = common dso_local global i64 0, align 8
@ADVERTISE_MASK = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@link_aneg = common dso_local global i32 0, align 4
@link_force_ok = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*, %struct.ethtool_cmd*)* @gem_begin_auto_negotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_begin_auto_negotiation(%struct.gem* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %10 = load %struct.gem*, %struct.gem** %3, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @phy_mii_mdio0, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.gem*, %struct.gem** %3, align 8
  %17 = getelementptr inbounds %struct.gem, %struct.gem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @phy_mii_mdio1, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %205

22:                                               ; preds = %15, %2
  %23 = load %struct.gem*, %struct.gem** %3, align 8
  %24 = call i64 @found_mii_phy(%struct.gem* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.gem*, %struct.gem** %3, align 8
  %28 = getelementptr inbounds %struct.gem, %struct.gem* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ADVERTISE_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.gem*, %struct.gem** %3, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.gem*, %struct.gem** %3, align 8
  %45 = getelementptr inbounds %struct.gem, %struct.gem* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %34
  %51 = load %struct.gem*, %struct.gem** %3, align 8
  %52 = getelementptr inbounds %struct.gem, %struct.gem* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  %54 = load %struct.gem*, %struct.gem** %3, align 8
  %55 = getelementptr inbounds %struct.gem, %struct.gem* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.gem*, %struct.gem** %3, align 8
  %59 = getelementptr inbounds %struct.gem, %struct.gem* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %63 = icmp ne %struct.ethtool_cmd* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %83

65:                                               ; preds = %50
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AUTONEG_ENABLE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %82

75:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  %76 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %75, %71
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SPEED_1000, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %96 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @SPEED_100, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %93, %89
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @SPEED_100, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %109 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @SPEED_10, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %106, %102
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @DUPLEX_FULL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %122 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %120, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %119, %115
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @SPEED_10, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %130
  %136 = load %struct.gem*, %struct.gem** %3, align 8
  %137 = getelementptr inbounds %struct.gem, %struct.gem* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.gem*, %struct.gem** %3, align 8
  %143 = getelementptr inbounds %struct.gem, %struct.gem* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.gem*, %struct.gem** %3, align 8
  %145 = getelementptr inbounds %struct.gem, %struct.gem* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.gem*, %struct.gem** %3, align 8
  %149 = getelementptr inbounds %struct.gem, %struct.gem* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.gem*, %struct.gem** %3, align 8
  %153 = getelementptr inbounds %struct.gem, %struct.gem* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  br label %217

155:                                              ; preds = %135
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.gem*, %struct.gem** %3, align 8
  %158 = getelementptr inbounds %struct.gem, %struct.gem* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %155
  %162 = load %struct.gem*, %struct.gem** %3, align 8
  %163 = call i64 @found_mii_phy(%struct.gem* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load %struct.gem*, %struct.gem** %3, align 8
  %167 = getelementptr inbounds %struct.gem, %struct.gem* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %172, align 8
  %174 = load %struct.gem*, %struct.gem** %3, align 8
  %175 = getelementptr inbounds %struct.gem, %struct.gem* %174, i32 0, i32 5
  %176 = load i32, i32* %5, align 4
  %177 = call i32 %173(%struct.TYPE_7__* %175, i32 %176)
  br label %178

178:                                              ; preds = %165, %161
  %179 = load i32, i32* @link_aneg, align 4
  %180 = load %struct.gem*, %struct.gem** %3, align 8
  %181 = getelementptr inbounds %struct.gem, %struct.gem* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  br label %204

182:                                              ; preds = %155
  %183 = load %struct.gem*, %struct.gem** %3, align 8
  %184 = call i64 @found_mii_phy(%struct.gem* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load %struct.gem*, %struct.gem** %3, align 8
  %188 = getelementptr inbounds %struct.gem, %struct.gem* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %193, align 8
  %195 = load %struct.gem*, %struct.gem** %3, align 8
  %196 = getelementptr inbounds %struct.gem, %struct.gem* %195, i32 0, i32 5
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 %194(%struct.TYPE_7__* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %186, %182
  %201 = load i32, i32* @link_force_ok, align 4
  %202 = load %struct.gem*, %struct.gem** %3, align 8
  %203 = getelementptr inbounds %struct.gem, %struct.gem* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %178
  br label %205

205:                                              ; preds = %204, %21
  %206 = load %struct.gem*, %struct.gem** %3, align 8
  %207 = getelementptr inbounds %struct.gem, %struct.gem* %206, i32 0, i32 3
  store i64 0, i64* %207, align 8
  %208 = load %struct.gem*, %struct.gem** %3, align 8
  %209 = getelementptr inbounds %struct.gem, %struct.gem* %208, i32 0, i32 2
  %210 = load i64, i64* @jiffies, align 8
  %211 = load i32, i32* @HZ, align 4
  %212 = mul nsw i32 12, %211
  %213 = sdiv i32 %212, 10
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %210, %214
  %216 = call i32 @mod_timer(i32* %209, i64 %215)
  br label %217

217:                                              ; preds = %205, %140
  ret void
}

declare dso_local i64 @found_mii_phy(%struct.gem*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
