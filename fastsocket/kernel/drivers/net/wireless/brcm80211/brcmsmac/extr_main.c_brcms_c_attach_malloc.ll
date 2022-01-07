; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_attach_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_attach_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, %struct.brcms_band**, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.brcms_band = type { i32 }
%struct.TYPE_5__ = type { %struct.brcms_hw_band**, %struct.brcms_c_info* }
%struct.brcms_hw_band = type { i32 }
%struct.TYPE_4__ = type { %struct.brcms_c_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAXBANDS = common dso_local global i32 0, align 4
@BRCMS_MAXMODULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcms_c_info* (i32, i32*, i32)* @brcms_c_attach_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcms_c_info* @brcms_c_attach_malloc(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcms_c_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i8* @kzalloc(i32 72, i32 %11)
  %13 = bitcast i8* %12 to %struct.brcms_c_info*
  store %struct.brcms_c_info* %13, %struct.brcms_c_info** %8, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %15 = icmp eq %struct.brcms_c_info* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  store i32 1002, i32* %17, align 4
  br label %247

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i8* @kzalloc(i32 4, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  store i32 1003, i32* %29, align 4
  br label %247

30:                                               ; preds = %18
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.brcms_c_info* %31, %struct.brcms_c_info** %35, align 8
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i8* @kzalloc(i32 4, i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_5__*
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 7
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %42 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %41, i32 0, i32 7
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp eq %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32*, i32** %6, align 8
  store i32 1005, i32* %46, align 4
  br label %247

47:                                               ; preds = %30
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %50 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %49, i32 0, i32 7
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store %struct.brcms_c_info* %48, %struct.brcms_c_info** %52, align 8
  %53 = load i32, i32* @MAXBANDS, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i8* @kzalloc(i32 %56, i32 %57)
  %59 = bitcast i8* %58 to %struct.brcms_hw_band*
  %60 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %61 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %60, i32 0, i32 7
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %63, align 8
  %65 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %64, i64 0
  store %struct.brcms_hw_band* %59, %struct.brcms_hw_band** %65, align 8
  %66 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %67 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %66, i32 0, i32 7
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %69, align 8
  %71 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %70, i64 0
  %72 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %71, align 8
  %73 = icmp eq %struct.brcms_hw_band* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %47
  %75 = load i32*, i32** %6, align 8
  store i32 1006, i32* %75, align 4
  br label %247

76:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MAXBANDS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 7
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %85, align 8
  %87 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %86, i64 0
  %88 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %87, align 8
  %89 = ptrtoint %struct.brcms_hw_band* %88 to i64
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = add i64 %89, %92
  %94 = inttoptr i64 %93 to %struct.brcms_hw_band*
  %95 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %96 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %95, i32 0, i32 7
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %99, i64 %101
  store %struct.brcms_hw_band* %94, %struct.brcms_hw_band** %102, align 8
  br label %103

103:                                              ; preds = %81
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %77

106:                                              ; preds = %77
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @BRCMS_MAXMODULES, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = call i8* @kzalloc(i32 %111, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %116 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %115, i32 0, i32 6
  store i32* %114, i32** %116, align 8
  %117 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %118 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %107
  %122 = load i32*, i32** %6, align 8
  store i32 1009, i32* %122, align 4
  br label %247

123:                                              ; preds = %107
  %124 = load i32, i32* @GFP_ATOMIC, align 4
  %125 = call i8* @kzalloc(i32 4, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %128 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %127, i32 0, i32 5
  store i32* %126, i32** %128, align 8
  %129 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %130 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32*, i32** %6, align 8
  store i32 1010, i32* %134, align 4
  br label %247

135:                                              ; preds = %123
  %136 = load i32, i32* %5, align 4
  %137 = call i32* @brcms_c_bsscfg_malloc(i32 %136)
  %138 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %139 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %138, i32 0, i32 4
  store i32* %137, i32** %139, align 8
  %140 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %141 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32*, i32** %6, align 8
  store i32 1011, i32* %145, align 4
  br label %247

146:                                              ; preds = %135
  %147 = load i32, i32* @GFP_ATOMIC, align 4
  %148 = call i8* @kzalloc(i32 4, i32 %147)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %151 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %150, i32 0, i32 3
  store i32* %149, i32** %151, align 8
  %152 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %153 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32*, i32** %6, align 8
  store i32 1016, i32* %157, align 4
  br label %247

158:                                              ; preds = %146
  %159 = load i32, i32* @GFP_ATOMIC, align 4
  %160 = call i8* @kzalloc(i32 4, i32 %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %163 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %162, i32 0, i32 2
  store i32* %161, i32** %163, align 8
  %164 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %165 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32*, i32** %6, align 8
  store i32 1017, i32* %169, align 4
  br label %247

170:                                              ; preds = %158
  %171 = load i32, i32* @MAXBANDS, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 4, %172
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* @GFP_ATOMIC, align 4
  %176 = call i8* @kzalloc(i32 %174, i32 %175)
  %177 = bitcast i8* %176 to %struct.brcms_band*
  %178 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %179 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %178, i32 0, i32 1
  %180 = load %struct.brcms_band**, %struct.brcms_band*** %179, align 8
  %181 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %180, i64 0
  store %struct.brcms_band* %177, %struct.brcms_band** %181, align 8
  %182 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %183 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %182, i32 0, i32 1
  %184 = load %struct.brcms_band**, %struct.brcms_band*** %183, align 8
  %185 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %184, i64 0
  %186 = load %struct.brcms_band*, %struct.brcms_band** %185, align 8
  %187 = icmp eq %struct.brcms_band* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %170
  %189 = load i32*, i32** %6, align 8
  store i32 1025, i32* %189, align 4
  br label %247

190:                                              ; preds = %170
  store i32 1, i32* %10, align 4
  br label %191

191:                                              ; preds = %213, %190
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @MAXBANDS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %216

195:                                              ; preds = %191
  %196 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %197 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %196, i32 0, i32 1
  %198 = load %struct.brcms_band**, %struct.brcms_band*** %197, align 8
  %199 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %198, i64 0
  %200 = load %struct.brcms_band*, %struct.brcms_band** %199, align 8
  %201 = ptrtoint %struct.brcms_band* %200 to i64
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 4, %203
  %205 = add i64 %201, %204
  %206 = inttoptr i64 %205 to %struct.brcms_band*
  %207 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %208 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %207, i32 0, i32 1
  %209 = load %struct.brcms_band**, %struct.brcms_band*** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %209, i64 %211
  store %struct.brcms_band* %206, %struct.brcms_band** %212, align 8
  br label %213

213:                                              ; preds = %195
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %191

216:                                              ; preds = %191
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* @GFP_ATOMIC, align 4
  %219 = call i8* @kzalloc(i32 4, i32 %218)
  %220 = bitcast i8* %219 to %struct.TYPE_6__*
  %221 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %222 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %221, i32 0, i32 0
  store %struct.TYPE_6__* %220, %struct.TYPE_6__** %222, align 8
  %223 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %224 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %223, i32 0, i32 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = icmp eq %struct.TYPE_6__* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %217
  %228 = load i32*, i32** %6, align 8
  store i32 1026, i32* %228, align 4
  br label %247

229:                                              ; preds = %217
  %230 = load i32, i32* @GFP_ATOMIC, align 4
  %231 = call i8* @kzalloc(i32 4, i32 %230)
  %232 = bitcast i8* %231 to i32*
  %233 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %234 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %233, i32 0, i32 0
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  store i32* %232, i32** %236, align 8
  %237 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %238 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %229
  %244 = load i32*, i32** %6, align 8
  store i32 1027, i32* %244, align 4
  br label %247

245:                                              ; preds = %229
  %246 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  store %struct.brcms_c_info* %246, %struct.brcms_c_info** %4, align 8
  br label %250

247:                                              ; preds = %243, %227, %188, %168, %156, %144, %133, %121, %74, %45, %28, %16
  %248 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %249 = call i32 @brcms_c_detach_mfree(%struct.brcms_c_info* %248)
  store %struct.brcms_c_info* null, %struct.brcms_c_info** %4, align 8
  br label %250

250:                                              ; preds = %247, %245
  %251 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  ret %struct.brcms_c_info* %251
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32* @brcms_c_bsscfg_malloc(i32) #1

declare dso_local i32 @brcms_c_detach_mfree(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
