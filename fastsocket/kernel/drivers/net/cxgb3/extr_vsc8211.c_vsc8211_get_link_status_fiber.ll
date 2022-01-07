; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_vsc8211.c_vsc8211_get_link_status_fiber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_vsc8211.c_vsc8211_get_link_status_fiber.c"
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
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_1000XFULL = common dso_local global i32 0, align 4
@ADVERTISE_1000XHALF = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @vsc8211_get_link_status_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8211_get_link_status_fiber(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  br label %205

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
  br label %205

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
  br label %186

94:                                               ; preds = %61
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %185

99:                                               ; preds = %94
  %100 = load %struct.cphy*, %struct.cphy** %7, align 8
  %101 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %102 = load i32, i32* @MII_LPA, align 4
  %103 = call i32 @t3_mdio_read(%struct.cphy* %100, i32 %101, i32 %102, i32* %14)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.cphy*, %struct.cphy** %7, align 8
  %108 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %109 = load i32, i32* @MII_ADVERTISE, align 4
  %110 = call i32 @t3_mdio_read(%struct.cphy* %107, i32 %108, i32 %109, i32* %15)
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  br label %205

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* @SPEED_1000, align 4
  store i32 %125, i32* %17, align 4
  br label %137

126:                                              ; preds = %116
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @ADVERTISE_1000XHALF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* @SPEED_1000, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %133, %126
  br label %137

137:                                              ; preds = %136, %123
  %138 = load i32*, i32** %11, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %184

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @DUPLEX_FULL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %184

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @PAUSE_RX, align 4
  %153 = load i32, i32* @PAUSE_TX, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %19, align 4
  br label %183

155:                                              ; preds = %144
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %14, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @PAUSE_TX, align 4
  store i32 %168, i32* %19, align 4
  br label %182

169:                                              ; preds = %160, %155
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @PAUSE_RX, align 4
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %179, %174, %169
  br label %182

182:                                              ; preds = %181, %167
  br label %183

183:                                              ; preds = %182, %151
  br label %184

184:                                              ; preds = %183, %140, %137
  br label %185

185:                                              ; preds = %184, %94
  br label %186

186:                                              ; preds = %185, %93
  %187 = load i32*, i32** %9, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %17, align 4
  %191 = load i32*, i32** %9, align 8
  store i32 %190, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %10, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %18, align 4
  %197 = load i32*, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32*, i32** %11, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %19, align 4
  %203 = load i32*, i32** %11, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %204, %114, %52, %34
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
