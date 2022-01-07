; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_set_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_ib = type { i32*, i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_ME_WRITE = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SYSTEM = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_VALID = common dso_local global i32 0, align 4
@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_vm_set_page(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_ib*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @cayman_vm_page_flags(%struct.radeon_device* %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %137

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %135, %29
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %136

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = mul i32 %34, 2
  %36 = add i32 1, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ugt i32 %37, 16383
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 16383, i32* %17, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* @PACKET3_ME_WRITE, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @PACKET3(i32 %41, i32 %42)
  %44 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %45 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  store i32 %43, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %55 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %58 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %53, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @upper_32_bits(i32 %63)
  %65 = and i32 %64, 255
  %66 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %67 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %70 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32 %65, i32* %74, align 4
  br label %75

75:                                               ; preds = %128, %40
  %76 = load i32, i32* %17, align 4
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %135

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @radeon_vm_map_gart(%struct.radeon_device* %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %88, -4096
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %16, align 4
  br label %100

91:                                               ; preds = %78
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %16, align 4
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %96
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %109 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %112 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  store i32 %107, i32* %116, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @upper_32_bits(i32 %117)
  %119 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %120 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %123 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  store i32 %118, i32* %127, align 4
  br label %128

128:                                              ; preds = %100
  %129 = load i32, i32* %17, align 4
  %130 = sub i32 %129, 2
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 8
  store i32 %134, i32* %10, align 4
  br label %75

135:                                              ; preds = %75
  br label %30

136:                                              ; preds = %30
  br label %265

137:                                              ; preds = %7
  br label %138

138:                                              ; preds = %243, %137
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %244

141:                                              ; preds = %138
  %142 = load i32, i32* %12, align 4
  %143 = mul i32 %142, 2
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ugt i32 %144, 1048574
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 1048574, i32* %17, align 4
  br label %147

147:                                              ; preds = %146, %141
  %148 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i8* @DMA_PACKET(i32 %148, i32 0, i32 0, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %153 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %156 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  store i32 %151, i32* %160, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %163 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %166 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  store i32 %161, i32* %170, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @upper_32_bits(i32 %171)
  %173 = and i32 %172, 255
  %174 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %175 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %178 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %176, i64 %181
  store i32 %173, i32* %182, align 4
  br label %183

183:                                              ; preds = %236, %147
  %184 = load i32, i32* %17, align 4
  %185 = icmp ugt i32 %184, 0
  br i1 %185, label %186, label %243

186:                                              ; preds = %183
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @radeon_vm_map_gart(%struct.radeon_device* %192, i32 %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = and i64 %196, -4096
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %16, align 4
  br label %208

199:                                              ; preds = %186
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %16, align 4
  br label %207

206:                                              ; preds = %199
  store i32 0, i32* %16, align 4
  br label %207

207:                                              ; preds = %206, %204
  br label %208

208:                                              ; preds = %207, %191
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %16, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %217 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %220 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %218, i64 %223
  store i32 %215, i32* %224, align 4
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @upper_32_bits(i32 %225)
  %227 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %228 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %231 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %229, i64 %234
  store i32 %226, i32* %235, align 4
  br label %236

236:                                              ; preds = %208
  %237 = load i32, i32* %17, align 4
  %238 = sub i32 %237, 2
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %12, align 4
  %240 = add i32 %239, -1
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 8
  store i32 %242, i32* %10, align 4
  br label %183

243:                                              ; preds = %183
  br label %138

244:                                              ; preds = %138
  br label %245

245:                                              ; preds = %251, %244
  %246 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %247 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 7
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %245
  %252 = load i32, i32* @DMA_PACKET_NOP, align 4
  %253 = call i8* @DMA_PACKET(i32 %252, i32 0, i32 0, i32 0)
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %256 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %259 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %257, i64 %262
  store i32 %254, i32* %263, align 4
  br label %245

264:                                              ; preds = %245
  br label %265

265:                                              ; preds = %264, %136
  ret void
}

declare dso_local i32 @cayman_vm_page_flags(%struct.radeon_device*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_vm_map_gart(%struct.radeon_device*, i32) #1

declare dso_local i8* @DMA_PACKET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
