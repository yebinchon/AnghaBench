; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_vsc8211.c_vsc8211_get_link_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_vsc8211.c_vsc8211_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@VSC8211_AUX_CTRL_STAT = common dso_local global i32 0, align 4
@F_ACSR_DUPLEX = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @vsc8211_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8211_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.cphy*, %struct.cphy** %7, align 8
  %21 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %22 = load i32, i32* @MII_BMCR, align 4
  %23 = call i32 @t3_mdio_read(%struct.cphy* %20, i32 %21, i32 %22, i32* %12)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = load %struct.cphy*, %struct.cphy** %7, align 8
  %28 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %29 = load i32, i32* @MII_BMSR, align 4
  %30 = call i32 @t3_mdio_read(%struct.cphy* %27, i32 %28, i32 %29, i32* %13)
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %26, %5
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %6, align 4
  br label %221

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @BMSR_LSTATUS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.cphy*, %struct.cphy** %7, align 8
  %46 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %47 = load i32, i32* @MII_BMSR, align 4
  %48 = call i32 @t3_mdio_read(%struct.cphy* %45, i32 %46, i32 %47, i32* %13)
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %6, align 4
  br label %221

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @BMSR_LSTATUS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %36
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @BMCR_ANENABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @BMCR_FULLDPLX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @DUPLEX_FULL, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @DUPLEX_HALF, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @BMCR_SPEED1000, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @SPEED_1000, align 4
  store i32 %82, i32* %17, align 4
  br label %93

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @BMCR_SPEED100, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @SPEED_100, align 4
  store i32 %89, i32* %17, align 4
  br label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @SPEED_10, align 4
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %81
  br label %202

94:                                               ; preds = %61
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %201

99:                                               ; preds = %94
  %100 = load %struct.cphy*, %struct.cphy** %7, align 8
  %101 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %102 = load i32, i32* @VSC8211_AUX_CTRL_STAT, align 4
  %103 = call i32 @t3_mdio_read(%struct.cphy* %100, i32 %101, i32 %102, i32* %13)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %6, align 4
  br label %221

108:                                              ; preds = %99
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @F_ACSR_DUPLEX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @DUPLEX_FULL, align 4
  br label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @DUPLEX_HALF, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @G_ACSR_SPEED(i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @SPEED_10, align 4
  store i32 %124, i32* %17, align 4
  br label %133

125:                                              ; preds = %117
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @SPEED_100, align 4
  store i32 %129, i32* %17, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @SPEED_1000, align 4
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %130, %128
  br label %133

133:                                              ; preds = %132, %123
  %134 = load i32*, i32** %11, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %200

136:                                              ; preds = %133
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @DUPLEX_FULL, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %200

140:                                              ; preds = %136
  %141 = load %struct.cphy*, %struct.cphy** %7, align 8
  %142 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %143 = load i32, i32* @MII_LPA, align 4
  %144 = call i32 @t3_mdio_read(%struct.cphy* %141, i32 %142, i32 %143, i32* %14)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load %struct.cphy*, %struct.cphy** %7, align 8
  %149 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %150 = load i32, i32* @MII_ADVERTISE, align 4
  %151 = call i32 @t3_mdio_read(%struct.cphy* %148, i32 %149, i32 %150, i32* %15)
  store i32 %151, i32* %16, align 4
  br label %152

152:                                              ; preds = %147, %140
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %6, align 4
  br label %221

157:                                              ; preds = %152
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, i32* @PAUSE_RX, align 4
  %166 = load i32, i32* @PAUSE_TX, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %19, align 4
  br label %199

168:                                              ; preds = %157
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* @PAUSE_TX, align 4
  store i32 %184, i32* %19, align 4
  br label %198

185:                                              ; preds = %178, %173, %168
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @PAUSE_RX, align 4
  store i32 %196, i32* %19, align 4
  br label %197

197:                                              ; preds = %195, %190, %185
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198, %164
  br label %200

200:                                              ; preds = %199, %136, %133
  br label %201

201:                                              ; preds = %200, %94
  br label %202

202:                                              ; preds = %201, %93
  %203 = load i32*, i32** %9, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %17, align 4
  %207 = load i32*, i32** %9, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i32*, i32** %10, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %18, align 4
  %213 = load i32*, i32** %10, align 8
  store i32 %212, i32* %213, align 4
  br label %214

214:                                              ; preds = %211, %208
  %215 = load i32*, i32** %11, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %19, align 4
  %219 = load i32*, i32** %11, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %217, %214
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %220, %155, %106, %52, %34
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @G_ACSR_SPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
