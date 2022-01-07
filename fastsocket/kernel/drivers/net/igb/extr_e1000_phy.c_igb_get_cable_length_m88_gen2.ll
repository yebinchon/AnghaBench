; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_get_cable_length_m88_gen2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_get_cable_length_m88_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.1*, i64, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@GS40G_PAGE_SHIFT = common dso_local global i32 0, align 4
@I347AT4_PCDL = common dso_local global i64 0, align 8
@I347AT4_PCDC = common dso_local global i64 0, align 8
@I347AT4_PCDC_CABLE_LENGTH_UNIT = common dso_local global i32 0, align 4
@I347AT4_PAGE_SELECT = common dso_local global i64 0, align 8
@M88E1112_VCT_DSP_DISTANCE = common dso_local global i64 0, align 8
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@M88E1000_CABLE_LENGTH_TABLE_SIZE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@e1000_m88_cable_length_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_cable_length_m88_gen2(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %4, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %272 [
    i32 131, label %17
    i32 128, label %86
    i32 130, label %86
    i32 129, label %182
  ]

17:                                               ; preds = %1
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @GS40G_PAGE_SHIFT, align 4
  %25 = shl i32 7, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @I347AT4_PCDL, align 8
  %28 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = add nsw i64 %26, %31
  %33 = call i32 %21(%struct.e1000_hw.1* %23, i64 %32, i32* %6)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %278

38:                                               ; preds = %17
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.1*
  %45 = load i32, i32* @GS40G_PAGE_SHIFT, align 4
  %46 = shl i32 7, %45
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @I347AT4_PCDC, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 %42(%struct.e1000_hw.1* %44, i64 %49, i32* %7)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %278

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @I347AT4_PCDC_CABLE_LENGTH_UNIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 100, i32 1
  %67 = sdiv i32 %62, %66
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 100, i32 1
  %75 = sdiv i32 %70, %74
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 100, i32 1
  %83 = sdiv i32 %78, %82
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %275

86:                                               ; preds = %1, %1
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %89, align 8
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = bitcast %struct.e1000_hw* %91 to %struct.e1000_hw.1*
  %93 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %94 = call i32 %90(%struct.e1000_hw.1* %92, i64 %93, i32* %9)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %276

98:                                               ; preds = %86
  %99 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %106 = call i32 %102(%struct.e1000_hw.0* %104, i64 %105, i32 7)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %276

110:                                              ; preds = %98
  %111 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %112 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %113, align 8
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = bitcast %struct.e1000_hw* %115 to %struct.e1000_hw.1*
  %117 = load i64, i64* @I347AT4_PCDL, align 8
  %118 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %119 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = call i32 %114(%struct.e1000_hw.1* %116, i64 %121, i32* %6)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %276

126:                                              ; preds = %110
  %127 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %129, align 8
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %132 = bitcast %struct.e1000_hw* %131 to %struct.e1000_hw.1*
  %133 = load i64, i64* @I347AT4_PCDC, align 8
  %134 = call i32 %130(%struct.e1000_hw.1* %132, i64 %133, i32* %7)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %276

138:                                              ; preds = %126
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @I347AT4_PCDC_CABLE_LENGTH_UNIT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 100, i32 1
  %150 = sdiv i32 %145, %149
  %151 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %152 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 100, i32 1
  %158 = sdiv i32 %153, %157
  %159 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %160 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 100, i32 1
  %166 = sdiv i32 %161, %165
  %167 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %168 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %170 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %171, align 8
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %174 = bitcast %struct.e1000_hw* %173 to %struct.e1000_hw.0*
  %175 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 %172(%struct.e1000_hw.0* %174, i64 %175, i32 %176)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %138
  br label %276

181:                                              ; preds = %138
  br label %275

182:                                              ; preds = %1
  %183 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %184 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %185, align 8
  %187 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %188 = bitcast %struct.e1000_hw* %187 to %struct.e1000_hw.1*
  %189 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %190 = call i32 %186(%struct.e1000_hw.1* %188, i64 %189, i32* %9)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  br label %276

194:                                              ; preds = %182
  %195 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %196 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %197, align 8
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = bitcast %struct.e1000_hw* %199 to %struct.e1000_hw.0*
  %201 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %202 = call i32 %198(%struct.e1000_hw.0* %200, i64 %201, i32 5)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  br label %276

206:                                              ; preds = %194
  %207 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %208 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i32 (%struct.e1000_hw.1*, i64, i32*)*, i32 (%struct.e1000_hw.1*, i64, i32*)** %209, align 8
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %212 = bitcast %struct.e1000_hw* %211 to %struct.e1000_hw.1*
  %213 = load i64, i64* @M88E1112_VCT_DSP_DISTANCE, align 8
  %214 = call i32 %210(%struct.e1000_hw.1* %212, i64 %213, i32* %6)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  br label %276

218:                                              ; preds = %206
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %223 = ashr i32 %221, %222
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @M88E1000_CABLE_LENGTH_TABLE_SIZE, align 4
  %226 = sub nsw i32 %225, 1
  %227 = icmp sge i32 %224, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %218
  %229 = load i32, i32* @E1000_ERR_PHY, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %5, align 4
  br label %276

231:                                              ; preds = %218
  %232 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %239 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %240, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %248 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %250 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %253 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %251, %254
  %256 = sdiv i32 %255, 2
  %257 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %258 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  %259 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %260 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %261, align 8
  %263 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %264 = bitcast %struct.e1000_hw* %263 to %struct.e1000_hw.0*
  %265 = load i64, i64* @I347AT4_PAGE_SELECT, align 8
  %266 = load i32, i32* %9, align 4
  %267 = call i32 %262(%struct.e1000_hw.0* %264, i64 %265, i32 %266)
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %231
  br label %276

271:                                              ; preds = %231
  br label %275

272:                                              ; preds = %1
  %273 = load i32, i32* @E1000_ERR_PHY, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %5, align 4
  br label %276

275:                                              ; preds = %271, %181, %55
  br label %276

276:                                              ; preds = %275, %272, %270, %228, %217, %205, %193, %180, %137, %125, %109, %97
  %277 = load i32, i32* %5, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %276, %53, %36
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
