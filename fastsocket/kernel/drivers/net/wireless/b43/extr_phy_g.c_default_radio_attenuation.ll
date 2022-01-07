; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_default_radio_attenuation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_default_radio_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_bus_dev*, %struct.b43_phy }
%struct.b43_bus_dev = type { i64, i64, i32, i32 }
%struct.b43_phy = type { i64, i32, i32 }
%struct.b43_rfatt = type { i32, i32 }

@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BCM4309G = common dso_local global i64 0, align 8
@B43_PHYTYPE_A = common dso_local global i64 0, align 8
@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_rfatt*)* @default_radio_attenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_radio_attenuation(%struct.b43_wldev* %0, %struct.b43_rfatt* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_rfatt*, align 8
  %5 = alloca %struct.b43_bus_dev*, align 8
  %6 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_rfatt* %1, %struct.b43_rfatt** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %8, align 8
  store %struct.b43_bus_dev* %9, %struct.b43_bus_dev** %5, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  store %struct.b43_phy* %11, %struct.b43_phy** %6, align 8
  %12 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %13 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %15, align 8
  %17 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %23, align 8
  %25 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %31, align 8
  %33 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 67
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %38 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  br label %230

39:                                               ; preds = %29
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %40, i32 0, i32 0
  %42 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %41, align 8
  %43 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 81
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %48 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %47, i32 0, i32 1
  store i32 3, i32* %48, align 4
  br label %230

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %21, %2
  %52 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @B43_PHYTYPE_A, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %59 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %58, i32 0, i32 1
  store i32 96, i32* %59, align 4
  br label %230

60:                                               ; preds = %51
  %61 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %227 [
    i32 8275, label %64
    i32 8272, label %72
  ]

64:                                               ; preds = %60
  %65 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %66 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %71 [
    i32 1, label %68
  ]

68:                                               ; preds = %64
  %69 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %70 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %69, i32 0, i32 1
  store i32 6, i32* %70, align 4
  br label %230

71:                                               ; preds = %64
  br label %227

72:                                               ; preds = %60
  %73 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %74 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %224 [
    i32 0, label %76
    i32 1, label %79
    i32 2, label %150
    i32 3, label %209
    i32 4, label %212
    i32 5, label %212
    i32 6, label %215
    i32 7, label %215
    i32 8, label %218
    i32 9, label %223
  ]

76:                                               ; preds = %72
  %77 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %78 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %77, i32 0, i32 1
  store i32 5, i32* %78, align 4
  br label %230

79:                                               ; preds = %72
  %80 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %81 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @B43_PHYTYPE_G, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %79
  %86 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %87 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %93 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %99 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 30
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %104 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %103, i32 0, i32 1
  store i32 3, i32* %104, align 4
  br label %124

105:                                              ; preds = %97, %91, %85
  %106 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %107 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %113 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %119 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %118, i32 0, i32 1
  store i32 3, i32* %119, align 4
  br label %123

120:                                              ; preds = %111, %105
  %121 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %122 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %102
  br label %149

125:                                              ; preds = %79
  %126 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %127 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %133 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %139 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %140, 30
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %144 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %143, i32 0, i32 1
  store i32 7, i32* %144, align 4
  br label %148

145:                                              ; preds = %137, %131, %125
  %146 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %147 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %146, i32 0, i32 1
  store i32 6, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %124
  br label %230

150:                                              ; preds = %72
  %151 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %152 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @B43_PHYTYPE_G, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %205

156:                                              ; preds = %150
  %157 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %158 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %156
  %163 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %164 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %170 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %171, 30
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %175 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %174, i32 0, i32 1
  store i32 3, i32* %175, align 4
  br label %204

176:                                              ; preds = %168, %162, %156
  %177 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %178 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %184 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %190 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %189, i32 0, i32 1
  store i32 5, i32* %190, align 4
  br label %203

191:                                              ; preds = %182, %176
  %192 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %193 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 17184
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %198 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %197, i32 0, i32 1
  store i32 4, i32* %198, align 4
  br label %202

199:                                              ; preds = %191
  %200 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %201 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %200, i32 0, i32 1
  store i32 3, i32* %201, align 4
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202, %188
  br label %204

204:                                              ; preds = %203, %173
  br label %208

205:                                              ; preds = %150
  %206 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %207 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %206, i32 0, i32 1
  store i32 6, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %204
  br label %230

209:                                              ; preds = %72
  %210 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %211 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %210, i32 0, i32 1
  store i32 5, i32* %211, align 4
  br label %230

212:                                              ; preds = %72, %72
  %213 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %214 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  br label %230

215:                                              ; preds = %72, %72
  %216 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %217 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %216, i32 0, i32 1
  store i32 5, i32* %217, align 4
  br label %230

218:                                              ; preds = %72
  %219 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %220 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %219, i32 0, i32 1
  store i32 10, i32* %220, align 4
  %221 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %222 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %221, i32 0, i32 0
  store i32 1, i32* %222, align 4
  br label %230

223:                                              ; preds = %72
  br label %224

224:                                              ; preds = %72, %223
  %225 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %226 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %225, i32 0, i32 1
  store i32 5, i32* %226, align 4
  br label %230

227:                                              ; preds = %60, %71
  %228 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %229 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %228, i32 0, i32 1
  store i32 5, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %224, %218, %215, %212, %209, %208, %149, %76, %68, %57, %46, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
