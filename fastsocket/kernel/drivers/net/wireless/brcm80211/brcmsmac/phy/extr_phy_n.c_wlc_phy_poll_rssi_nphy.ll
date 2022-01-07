; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_poll_rssi_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_poll_rssi_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RADIO_MIMO_CORESEL_ALLRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %29 = call i32 @read_phy_reg(%struct.brcms_phy* %28, i32 166)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %31 = call i32 @read_phy_reg(%struct.brcms_phy* %30, i32 167)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @NREV_GE(i32 %35, i32 3)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %4
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %40 = call i32 @read_phy_reg(%struct.brcms_phy* %39, i32 249)
  store i32 %40, i32* %17, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %42 = call i32 @read_phy_reg(%struct.brcms_phy* %41, i32 251)
  store i32 %42, i32* %18, align 4
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %44 = call i32 @read_phy_reg(%struct.brcms_phy* %43, i32 143)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %46 = call i32 @read_phy_reg(%struct.brcms_phy* %45, i32 165)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %48 = call i32 @read_phy_reg(%struct.brcms_phy* %47, i32 229)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %50 = call i32 @read_phy_reg(%struct.brcms_phy* %49, i32 230)
  store i32 %50, i32* %16, align 4
  br label %62

51:                                               ; preds = %4
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %53 = call i32 @read_phy_reg(%struct.brcms_phy* %52, i32 165)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %55 = call i32 @read_phy_reg(%struct.brcms_phy* %54, i32 120)
  store i32 %55, i32* %19, align 4
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %57 = call i32 @read_phy_reg(%struct.brcms_phy* %56, i32 236)
  store i32 %57, i32* %20, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %59 = call i32 @read_phy_reg(%struct.brcms_phy* %58, i32 122)
  store i32 %59, i32* %21, align 4
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %61 = call i32 @read_phy_reg(%struct.brcms_phy* %60, i32 125)
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %51, %38
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %64 = load i32, i32* @RADIO_MIMO_CORESEL_ALLRX, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @wlc_phy_rssisel_nphy(%struct.brcms_phy* %63, i32 %64, i32 %65)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %68 = call i32 @read_phy_reg(%struct.brcms_phy* %67, i32 202)
  store i32 %68, i32* %27, align 4
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @NREV_LT(i32 %72, i32 2)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %77 = call i32 @write_phy_reg(%struct.brcms_phy* %76, i32 202, i32 5)
  br label %78

78:                                               ; preds = %75, %62
  store i32 0, i32* %24, align 4
  br label %79

79:                                               ; preds = %87, %78
  %80 = load i32, i32* %24, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %24, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %24, align 4
  br label %79

90:                                               ; preds = %79
  store i32 0, i32* %25, align 4
  br label %91

91:                                               ; preds = %165, %90
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %168

95:                                               ; preds = %91
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @NREV_LT(i32 %99, i32 2)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %104 = call i32 @read_phy_reg(%struct.brcms_phy* %103, i32 457)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %106 = call i32 @read_phy_reg(%struct.brcms_phy* %105, i32 458)
  store i32 %106, i32* %10, align 4
  br label %112

107:                                              ; preds = %95
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %109 = call i32 @read_phy_reg(%struct.brcms_phy* %108, i32 537)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %111 = call i32 @read_phy_reg(%struct.brcms_phy* %110, i32 538)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %107, %102
  store i32 0, i32* %24, align 4
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 63
  %115 = shl i32 %114, 2
  %116 = ashr i32 %115, 2
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %24, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %119
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = ashr i32 %121, 8
  %123 = and i32 %122, 63
  %124 = shl i32 %123, 2
  %125 = ashr i32 %124, 2
  %126 = load i32, i32* %24, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %24, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, 63
  %132 = shl i32 %131, 2
  %133 = ashr i32 %132, 2
  %134 = load i32, i32* %24, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %24, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %10, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 63
  %141 = shl i32 %140, 2
  %142 = ashr i32 %141, 2
  %143 = load i32, i32* %24, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %24, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %145
  store i32 %142, i32* %146, align 4
  store i32 0, i32* %24, align 4
  br label %147

147:                                              ; preds = %161, %112
  %148 = load i32, i32* %24, align 4
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %24, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %154
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %24, align 4
  br label %147

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %25, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %25, align 4
  br label %91

168:                                              ; preds = %91
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 255
  store i32 %172, i32* %26, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 255
  %177 = shl i32 %176, 8
  %178 = load i32, i32* %26, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %26, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 255
  %184 = shl i32 %183, 16
  %185 = load i32, i32* %26, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %26, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 255
  %191 = shl i32 %190, 24
  %192 = load i32, i32* %26, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %26, align 4
  %194 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %195 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @NREV_LT(i32 %197, i32 2)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %168
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %202 = load i32, i32* %27, align 4
  %203 = call i32 @write_phy_reg(%struct.brcms_phy* %201, i32 202, i32 %202)
  br label %204

204:                                              ; preds = %200, %168
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @write_phy_reg(%struct.brcms_phy* %205, i32 166, i32 %206)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @write_phy_reg(%struct.brcms_phy* %208, i32 167, i32 %209)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %212 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @NREV_GE(i32 %214, i32 3)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %204
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @write_phy_reg(%struct.brcms_phy* %218, i32 249, i32 %219)
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @write_phy_reg(%struct.brcms_phy* %221, i32 251, i32 %222)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @write_phy_reg(%struct.brcms_phy* %224, i32 143, i32 %225)
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @write_phy_reg(%struct.brcms_phy* %227, i32 165, i32 %228)
  %230 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @write_phy_reg(%struct.brcms_phy* %230, i32 229, i32 %231)
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @write_phy_reg(%struct.brcms_phy* %233, i32 230, i32 %234)
  br label %252

236:                                              ; preds = %204
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @write_phy_reg(%struct.brcms_phy* %237, i32 165, i32 %238)
  %240 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @write_phy_reg(%struct.brcms_phy* %240, i32 120, i32 %241)
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %244 = load i32, i32* %20, align 4
  %245 = call i32 @write_phy_reg(%struct.brcms_phy* %243, i32 236, i32 %244)
  %246 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %247 = load i32, i32* %21, align 4
  %248 = call i32 @write_phy_reg(%struct.brcms_phy* %246, i32 122, i32 %247)
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @write_phy_reg(%struct.brcms_phy* %249, i32 125, i32 %250)
  br label %252

252:                                              ; preds = %236, %217
  %253 = load i32, i32* %26, align 4
  ret i32 %253
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_rssisel_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
