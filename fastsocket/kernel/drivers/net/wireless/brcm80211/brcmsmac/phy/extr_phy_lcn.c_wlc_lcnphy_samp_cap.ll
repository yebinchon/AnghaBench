; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_samp_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_samp_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64 }

@psm_corectlsts = common dso_local global i32 0, align 4
@smpl_clct_strptr = common dso_local global i32 0, align 4
@smpl_clct_stpptr = common dso_local global i32 0, align 4
@psm_phy_hdr_param = common dso_local global i32 0, align 4
@smpl_clct_curptr = common dso_local global i32 0, align 4
@tplatewrptr = common dso_local global i32 0, align 4
@tplatewrdata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32*, i32)* @wlc_lcnphy_samp_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_samp_cap(%struct.brcms_phy* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
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
  %22 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %25, align 8
  store %struct.brcms_phy_lcnphy* %26, %struct.brcms_phy_lcnphy** %22, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %28 = call i32 @read_phy_reg(%struct.brcms_phy* %27, i32 1754)
  store i32 %28, i32* %19, align 4
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @psm_corectlsts, align 4
  %33 = call i32 @D11REGOFFS(i32 %32)
  %34 = call i32 @bcma_read16(i32 %31, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 130
  store i32 0, i32* %36, align 4
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @psm_corectlsts, align 4
  %41 = call i32 @D11REGOFFS(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = or i32 64, %42
  %44 = call i32 @bcma_write16(i32 %39, i32 %41, i32 %43)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @smpl_clct_strptr, align 4
  %49 = call i32 @D11REGOFFS(i32 %48)
  %50 = call i32 @bcma_write16(i32 %47, i32 %49, i32 32256)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @smpl_clct_stpptr, align 4
  %55 = call i32 @D11REGOFFS(i32 %54)
  %56 = call i32 @bcma_write16(i32 %53, i32 %55, i32 32768)
  %57 = call i32 @udelay(i32 20)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @psm_phy_hdr_param, align 4
  %62 = call i32 @D11REGOFFS(i32 %61)
  %63 = call i32 @bcma_read16(i32 %60, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @psm_phy_hdr_param, align 4
  %68 = call i32 @D11REGOFFS(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, 48
  %71 = call i32 @bcma_write16(i32 %66, i32 %68, i32 %70)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %73 = call i32 @write_phy_reg(%struct.brcms_phy* %72, i32 1365, i32 0)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %75 = call i32 @write_phy_reg(%struct.brcms_phy* %74, i32 1446, i32 5)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %78, 6
  %80 = or i32 %77, %79
  %81 = call i32 @write_phy_reg(%struct.brcms_phy* %76, i32 1442, i32 %80)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %83 = call i32 @write_phy_reg(%struct.brcms_phy* %82, i32 1487, i32 3)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %85 = call i32 @write_phy_reg(%struct.brcms_phy* %84, i32 1445, i32 3)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %87 = call i32 @write_phy_reg(%struct.brcms_phy* %86, i32 1411, i32 0)
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %89 = call i32 @write_phy_reg(%struct.brcms_phy* %88, i32 1412, i32 0)
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %91 = call i32 @write_phy_reg(%struct.brcms_phy* %90, i32 1413, i32 4095)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %93 = call i32 @write_phy_reg(%struct.brcms_phy* %92, i32 1414, i32 0)
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %95 = call i32 @write_phy_reg(%struct.brcms_phy* %94, i32 1408, i32 17665)
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %97 = call i32 @read_phy_reg(%struct.brcms_phy* %96, i32 1754)
  store i32 %97, i32* %17, align 4
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %99 = load i32, i32* %17, align 4
  %100 = or i32 %99, 8200
  %101 = call i32 @write_phy_reg(%struct.brcms_phy* %98, i32 1754, i32 %100)
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %103 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @smpl_clct_stpptr, align 4
  %106 = call i32 @D11REGOFFS(i32 %105)
  %107 = call i32 @bcma_read16(i32 %104, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @smpl_clct_curptr, align 4
  %112 = call i32 @D11REGOFFS(i32 %111)
  %113 = call i32 @bcma_read16(i32 %110, i32 %112)
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %131, %5
  %115 = call i32 @udelay(i32 10)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @smpl_clct_curptr, align 4
  %120 = call i32 @D11REGOFFS(i32 %119)
  %121 = call i32 @bcma_read16(i32 %118, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %18, align 4
  %130 = icmp slt i32 %129, 500
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i1 [ false, %124 ], [ %130, %128 ]
  br i1 %132, label %114, label %133

133:                                              ; preds = %131
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %135 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @psm_phy_hdr_param, align 4
  %138 = call i32 @D11REGOFFS(i32 %137)
  %139 = call i32 @bcma_write16(i32 %136, i32 %138, i32 2)
  store i32 32256, i32* %15, align 4
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %141 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @tplatewrptr, align 4
  %144 = call i32 @D11REGOFFS(i32 %143)
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @bcma_write32(i32 %142, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %210, %133
  %148 = load i32, i32* %15, align 4
  %149 = icmp slt i32 %148, 32768
  br i1 %149, label %150, label %213

150:                                              ; preds = %147
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %152 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @tplatewrdata, align 4
  %155 = call i32 @D11REGOFFS(i32 %154)
  %156 = call i32 @bcma_read32(i32 %153, i32 %155)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = ashr i32 %157, 16
  %159 = and i32 %158, 1023
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %16, align 4
  %161 = and i32 %160, 1023
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %20, align 4
  %163 = icmp sgt i32 %162, 511
  br i1 %163, label %164, label %167

164:                                              ; preds = %150
  %165 = load i32, i32* %20, align 4
  %166 = sub nsw i32 %165, 1024
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %164, %150
  %168 = load i32, i32* %21, align 4
  %169 = icmp sgt i32 %168, 511
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %21, align 4
  %172 = sub nsw i32 %171, 1024
  store i32 %172, i32* %21, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %22, align 8
  %175 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load i32, i32* %21, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sub nsw i32 %181, 32256
  %183 = sdiv i32 %182, 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  store i32 %179, i32* %185, align 4
  br label %194

186:                                              ; preds = %173
  %187 = load i32, i32* %20, align 4
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sub nsw i32 %189, 32256
  %191 = sdiv i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  store i32 %187, i32* %193, align 4
  br label %194

194:                                              ; preds = %186, %178
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %8, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201, %197
  store i32 32768, i32* %15, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 130
  store i32 1, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %201
  br label %210

210:                                              ; preds = %209, %194
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %211, 4
  store i32 %212, i32* %15, align 4
  br label %147

213:                                              ; preds = %147
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %215 = load i32, i32* %19, align 4
  %216 = call i32 @write_phy_reg(%struct.brcms_phy* %214, i32 1754, i32 %215)
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %218 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @psm_phy_hdr_param, align 4
  %221 = call i32 @D11REGOFFS(i32 %220)
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @bcma_write16(i32 %219, i32 %221, i32 %222)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %225 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @psm_corectlsts, align 4
  %228 = call i32 @D11REGOFFS(i32 %227)
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @bcma_write16(i32 %226, i32 %228, i32 %229)
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @bcma_read16(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_write16(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
