; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_......fsbinfmt_elf.c_load_elf_interp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_......fsbinfmt_elf.c_load_elf_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.elfhdr = type { i64, i32, i32, i32 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.elf_phdr = type { i64, i32, i64, i64, i64 }

@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@ELF_MIN_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_DENYWRITE = common dso_local global i32 0, align 4
@PF_R = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PF_W = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elfhdr*, %struct.file*, i64*, i64)* @load_elf_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_elf_interp(%struct.elfhdr* %0, %struct.file* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.elfhdr*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.elf_phdr*, align 8
  %10 = alloca %struct.elf_phdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.elfhdr* %0, %struct.elfhdr** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 -1, i64* %15, align 8
  %25 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %26 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ET_EXEC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %32 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ET_DYN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %351

37:                                               ; preds = %30, %4
  %38 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %39 = call i32 @elf_check_arch(%struct.elfhdr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %351

42:                                               ; preds = %37
  %43 = load %struct.file*, %struct.file** %6, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.file*, %struct.file** %6, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %42
  br label %351

55:                                               ; preds = %47
  %56 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %57 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 40
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %351

62:                                               ; preds = %55
  %63 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %64 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %69 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 %71, 1638
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %62
  br label %351

74:                                               ; preds = %67
  %75 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %76 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 40, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @ELF_MIN_ALIGN, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %351

85:                                               ; preds = %74
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.elf_phdr* @kmalloc(i32 %86, i32 %87)
  store %struct.elf_phdr* %88, %struct.elf_phdr** %9, align 8
  %89 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %90 = icmp ne %struct.elf_phdr* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %351

92:                                               ; preds = %85
  %93 = load %struct.file*, %struct.file** %6, align 8
  %94 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %95 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %98 = bitcast %struct.elf_phdr* %97 to i8*
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @kernel_read(%struct.file* %93, i32 %96, i8* %98, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i64, i64* @EIO, align 8
  %102 = sub i64 0, %101
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %92
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %109, %106
  br label %348

113:                                              ; preds = %92
  %114 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %115 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %116 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @total_mapping_size(%struct.elf_phdr* %114, i32 %117)
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i64, i64* @EINVAL, align 8
  %123 = sub i64 0, %122
  store i64 %123, i64* %15, align 8
  br label %348

124:                                              ; preds = %113
  %125 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  store %struct.elf_phdr* %125, %struct.elf_phdr** %10, align 8
  store i32 0, i32* %18, align 4
  br label %126

126:                                              ; preds = %303, %124
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %129 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %308

132:                                              ; preds = %126
  %133 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %134 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PT_LOAD, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %302

138:                                              ; preds = %132
  %139 = load i32, i32* @MAP_PRIVATE, align 4
  %140 = load i32, i32* @MAP_DENYWRITE, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %142 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %143 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PF_R, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @PROT_READ, align 4
  store i32 %149, i32* %21, align 4
  br label %150

150:                                              ; preds = %148, %138
  %151 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %152 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @PF_W, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i32, i32* @PROT_WRITE, align 4
  %159 = load i32, i32* %21, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %21, align 4
  br label %161

161:                                              ; preds = %157, %150
  %162 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %163 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PF_X, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* @PROT_EXEC, align 4
  %170 = load i32, i32* %21, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %21, align 4
  br label %172

172:                                              ; preds = %168, %161
  %173 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %174 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %22, align 8
  %176 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %177 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ET_EXEC, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %184, label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181, %172
  %185 = load i32, i32* @MAP_FIXED, align 4
  %186 = load i32, i32* %20, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %20, align 4
  br label %201

188:                                              ; preds = %181
  %189 = load i64, i64* %8, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %193 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ET_DYN, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i64, i64* %22, align 8
  %199 = sub i64 0, %198
  store i64 %199, i64* %11, align 8
  br label %200

200:                                              ; preds = %197, %191, %188
  br label %201

201:                                              ; preds = %200, %184
  %202 = load %struct.file*, %struct.file** %6, align 8
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* %22, align 8
  %205 = add i64 %203, %204
  %206 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %20, align 4
  %209 = load i64, i64* %16, align 8
  %210 = call i64 @elf_map(%struct.file* %202, i64 %205, %struct.elf_phdr* %206, i32 %207, i32 %208, i64 %209)
  store i64 %210, i64* %24, align 8
  store i64 0, i64* %16, align 8
  %211 = load i64*, i64** %7, align 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %201
  %215 = load i64, i64* %24, align 8
  %216 = load i64*, i64** %7, align 8
  store i64 %215, i64* %216, align 8
  br label %217

217:                                              ; preds = %214, %201
  %218 = load i64, i64* %24, align 8
  store i64 %218, i64* %15, align 8
  %219 = load i64, i64* %24, align 8
  %220 = call i64 @BAD_ADDR(i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %348

223:                                              ; preds = %217
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %223
  %227 = load %struct.elfhdr*, %struct.elfhdr** %5, align 8
  %228 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @ET_DYN, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %226
  %233 = load i64, i64* %24, align 8
  %234 = load i64, i64* %22, align 8
  %235 = call i64 @ELF_PAGESTART(i64 %234)
  %236 = sub i64 %233, %235
  store i64 %236, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %237

237:                                              ; preds = %232, %226, %223
  %238 = load i64, i64* %11, align 8
  %239 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %240 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %238, %241
  store i64 %242, i64* %23, align 8
  %243 = load i64, i64* %23, align 8
  %244 = call i64 @BAD_ADDR(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %268, label %246

246:                                              ; preds = %237
  %247 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %248 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %251 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ugt i64 %249, %252
  br i1 %253, label %268, label %254

254:                                              ; preds = %246
  %255 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %256 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @TASK_SIZE, align 8
  %259 = icmp ugt i64 %257, %258
  br i1 %259, label %268, label %260

260:                                              ; preds = %254
  %261 = load i64, i64* @TASK_SIZE, align 8
  %262 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %263 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = sub i64 %261, %264
  %266 = load i64, i64* %23, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %260, %254, %246, %237
  %269 = load i64, i64* @ENOMEM, align 8
  %270 = sub i64 0, %269
  store i64 %270, i64* %15, align 8
  br label %348

271:                                              ; preds = %260
  %272 = load i64, i64* %11, align 8
  %273 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %274 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %272, %275
  %277 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %278 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = add i64 %276, %279
  store i64 %280, i64* %23, align 8
  %281 = load i64, i64* %23, align 8
  %282 = load i64, i64* %14, align 8
  %283 = icmp ugt i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %271
  %285 = load i64, i64* %23, align 8
  store i64 %285, i64* %14, align 8
  br label %286

286:                                              ; preds = %284, %271
  %287 = load i64, i64* %11, align 8
  %288 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %289 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %287, %290
  %292 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %293 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = add i64 %291, %294
  store i64 %295, i64* %23, align 8
  %296 = load i64, i64* %23, align 8
  %297 = load i64, i64* %13, align 8
  %298 = icmp ugt i64 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %286
  %300 = load i64, i64* %23, align 8
  store i64 %300, i64* %13, align 8
  br label %301

301:                                              ; preds = %299, %286
  br label %302

302:                                              ; preds = %301, %132
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %18, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %18, align 4
  %306 = load %struct.elf_phdr*, %struct.elf_phdr** %10, align 8
  %307 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %306, i32 1
  store %struct.elf_phdr* %307, %struct.elf_phdr** %10, align 8
  br label %126

308:                                              ; preds = %126
  %309 = load i64, i64* %13, align 8
  %310 = load i64, i64* %14, align 8
  %311 = icmp ugt i64 %309, %310
  br i1 %311, label %312, label %346

312:                                              ; preds = %308
  %313 = load i64, i64* %14, align 8
  %314 = call i64 @padzero(i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = load i64, i64* @EFAULT, align 8
  %318 = sub i64 0, %317
  store i64 %318, i64* %15, align 8
  br label %348

319:                                              ; preds = %312
  %320 = load i64, i64* %14, align 8
  %321 = load i32, i32* @ELF_MIN_ALIGN, align 4
  %322 = sext i32 %321 to i64
  %323 = add i64 %320, %322
  %324 = sub i64 %323, 1
  %325 = call i64 @ELF_PAGESTART(i64 %324)
  store i64 %325, i64* %14, align 8
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = call i32 @down_write(i32* %329)
  %331 = load i64, i64* %14, align 8
  %332 = load i64, i64* %13, align 8
  %333 = load i64, i64* %14, align 8
  %334 = sub i64 %332, %333
  %335 = call i64 @do_brk(i64 %331, i64 %334)
  store i64 %335, i64* %15, align 8
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = call i32 @up_write(i32* %339)
  %341 = load i64, i64* %15, align 8
  %342 = call i64 @BAD_ADDR(i64 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %319
  br label %348

345:                                              ; preds = %319
  br label %346

346:                                              ; preds = %345, %308
  %347 = load i64, i64* %11, align 8
  store i64 %347, i64* %15, align 8
  br label %348

348:                                              ; preds = %346, %344, %316, %268, %222, %121, %112
  %349 = load %struct.elf_phdr*, %struct.elf_phdr** %9, align 8
  %350 = call i32 @kfree(%struct.elf_phdr* %349)
  br label %351

351:                                              ; preds = %348, %91, %84, %73, %61, %54, %41, %36
  %352 = load i64, i64* %15, align 8
  ret i64 %352
}

declare dso_local i32 @elf_check_arch(%struct.elfhdr*) #1

declare dso_local %struct.elf_phdr* @kmalloc(i32, i32) #1

declare dso_local i32 @kernel_read(%struct.file*, i32, i8*, i32) #1

declare dso_local i64 @total_mapping_size(%struct.elf_phdr*, i32) #1

declare dso_local i64 @elf_map(%struct.file*, i64, %struct.elf_phdr*, i32, i32, i64) #1

declare dso_local i64 @BAD_ADDR(i64) #1

declare dso_local i64 @ELF_PAGESTART(i64) #1

declare dso_local i64 @padzero(i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_brk(i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.elf_phdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
