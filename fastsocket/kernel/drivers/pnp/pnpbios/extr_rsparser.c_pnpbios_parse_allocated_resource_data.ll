; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_parse_allocated_resource_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_parse_allocated_resource_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"parse allocated resources\0A\00", align 1
@LARGE_TAG = common dso_local global i8 0, align 1
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown tag %#x length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"no end tag in resource structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pnp_dev*, i8*, i8*)* @pnpbios_parse_allocated_resource_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnpbios_parse_allocated_resource_data(%struct.pnp_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %285

18:                                               ; preds = %3
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 0
  %21 = call i32 @pnp_dbg(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %23 = call i32 @pnp_init_resources(%struct.pnp_dev* %22)
  br label %24

24:                                               ; preds = %280, %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %281

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @LARGE_TAG, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %42, %46
  store i32 %47, i32* %8, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %64

52:                                               ; preds = %28
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 7
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 3
  %63 = and i32 %62, 15
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %52, %37
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %252 [
    i32 136, label %66
    i32 138, label %85
    i32 134, label %86
    i32 135, label %87
    i32 137, label %104
    i32 130, label %121
    i32 133, label %167
    i32 129, label %201
    i32 128, label %224
    i32 131, label %225
    i32 132, label %248
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 9
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %253

70:                                               ; preds = %66
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = bitcast i8* %72 to i16*
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 10
  %78 = bitcast i8* %77 to i16*
  %79 = load i16, i16* %78, align 2
  %80 = sext i16 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @pnpbios_parse_allocated_memresource(%struct.pnp_dev* %81, i32 %82, i32 %83)
  br label %259

85:                                               ; preds = %64
  br label %259

86:                                               ; preds = %64
  br label %259

87:                                               ; preds = %64
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 17
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %253

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 16
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @pnpbios_parse_allocated_memresource(%struct.pnp_dev* %100, i32 %101, i32 %102)
  br label %259

104:                                              ; preds = %64
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 9
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %253

108:                                              ; preds = %104
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @pnpbios_parse_allocated_memresource(%struct.pnp_dev* %117, i32 %118, i32 %119)
  br label %259

121:                                              ; preds = %64
  %122 = load i32, i32* %8, align 4
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = icmp ugt i32 %125, 3
  br i1 %126, label %127, label %128

127:                                              ; preds = %124, %121
  br label %253

128:                                              ; preds = %124
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %10, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = mul nsw i32 %136, 256
  %138 = add nsw i32 %132, %137
  store i32 %138, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %149, %128
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 16
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %146, %142
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = ashr i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %139

154:                                              ; preds = %139
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @pcibios_penalize_isa_irq(i32 %158, i32 1)
  br label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @IORESOURCE_DISABLED, align 4
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %160, %157
  %163 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %163, i32 %164, i32 %165)
  br label %259

167:                                              ; preds = %64
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 2
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %253

171:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %10, align 4
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  store i32 %175, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %186, %171
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 8
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load i32, i32* %12, align 4
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %183, %179
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %12, align 4
  %190 = ashr i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %176

191:                                              ; preds = %176
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i32, i32* @IORESOURCE_DISABLED, align 4
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %194, %191
  %197 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %197, i32 %198, i32 %199)
  br label %259

201:                                              ; preds = %64
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 7
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %253

205:                                              ; preds = %201
  %206 = load i8*, i8** %6, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 3
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = mul nsw i32 %213, 256
  %215 = add nsw i32 %209, %214
  store i32 %215, i32* %10, align 4
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 7
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  store i32 %219, i32* %11, align 4
  %220 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @pnpbios_parse_allocated_ioresource(%struct.pnp_dev* %220, i32 %221, i32 %222)
  br label %259

224:                                              ; preds = %64
  br label %259

225:                                              ; preds = %64
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 3
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %253

229:                                              ; preds = %225
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = mul nsw i32 %237, 256
  %239 = add nsw i32 %233, %238
  store i32 %239, i32* %10, align 4
  %240 = load i8*, i8** %6, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 3
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  store i32 %243, i32* %11, align 4
  %244 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @pnpbios_parse_allocated_ioresource(%struct.pnp_dev* %244, i32 %245, i32 %246)
  br label %259

248:                                              ; preds = %64
  %249 = load i8*, i8** %6, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 2
  store i8* %250, i8** %6, align 8
  %251 = load i8*, i8** %6, align 8
  store i8* %251, i8** %4, align 8
  br label %285

252:                                              ; preds = %64
  br label %253

253:                                              ; preds = %252, %228, %204, %170, %127, %107, %90, %69
  %254 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %255 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %254, i32 0, i32 0
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %8, align 4
  %258 = call i32 (i32*, i8*, ...) @dev_err(i32* %255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %229, %224, %205, %196, %162, %108, %91, %86, %85, %70
  %260 = load i8*, i8** %6, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = load i8, i8* @LARGE_TAG, align 1
  %265 = zext i8 %264 to i32
  %266 = and i32 %263, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %259
  %269 = load i32, i32* %8, align 4
  %270 = add i32 %269, 3
  %271 = load i8*, i8** %6, align 8
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %6, align 8
  br label %280

274:                                              ; preds = %259
  %275 = load i32, i32* %8, align 4
  %276 = add i32 %275, 1
  %277 = load i8*, i8** %6, align 8
  %278 = zext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %6, align 8
  br label %280

280:                                              ; preds = %274, %268
  br label %24

281:                                              ; preds = %24
  %282 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %283 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %282, i32 0, i32 0
  %284 = call i32 (i32*, i8*, ...) @dev_err(i32* %283, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %285

285:                                              ; preds = %281, %248, %17
  %286 = load i8*, i8** %4, align 8
  ret i8* %286
}

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local i32 @pnp_init_resources(%struct.pnp_dev*) #1

declare dso_local i32 @pnpbios_parse_allocated_memresource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pcibios_penalize_isa_irq(i32, i32) #1

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnpbios_parse_allocated_ioresource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
