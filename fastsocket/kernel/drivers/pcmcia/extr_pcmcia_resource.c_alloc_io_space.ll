; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_alloc_io_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_alloc_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"odd IO request: num %#x align %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"odd IO request: base %#x align %#x\0A\00", align 1
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4
@IORESOURCE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32)* @alloc_io_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_io_space(%struct.pcmcia_socket* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 1, %22
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 1, %27 ]
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ds_dbg(%struct.pcmcia_socket* %41, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  store i32 0, i32* %14, align 4
  br label %59

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i32, i32* %14, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %46

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %32, %28
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub i32 %63, 1
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ds_dbg(%struct.pcmcia_socket* %69, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %76 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %83 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %88 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 4095
  %93 = or i32 %89, %92
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %6, align 4
  br label %386

95:                                               ; preds = %81, %74
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %133, %95
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @MAX_IO_WIN, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %96
  %101 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %102 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %110, label %132

110:                                              ; preds = %100
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %116 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sub i32 %125, 1
  %127 = and i32 %124, %126
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %114
  store i32 1, i32* %6, align 4
  br label %386

132:                                              ; preds = %114, %110, %100
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %96

136:                                              ; preds = %96
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %378, %136
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @MAX_IO_WIN, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %381

141:                                              ; preds = %137
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %143 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = icmp ne %struct.TYPE_5__* %149, null
  br i1 %150, label %221, label %151

151:                                              ; preds = %141
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %157 = call %struct.TYPE_5__* @pcmcia_find_io_region(i32 %153, i32 %154, i32 %155, %struct.pcmcia_socket* %156)
  %158 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %159 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %164, align 8
  %165 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %166 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = icmp ne %struct.TYPE_5__* %172, null
  br i1 %173, label %174, label %220

174:                                              ; preds = %151
  %175 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %176 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %175, i32 0, i32 2
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %9, align 8
  store i32 %184, i32* %185, align 4
  %186 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %187 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @IORESOURCE_BITS, align 4
  %197 = xor i32 %196, -1
  %198 = and i32 %195, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @IORESOURCE_BITS, align 4
  %201 = and i32 %199, %200
  %202 = or i32 %198, %201
  %203 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %204 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  store i32 %202, i32* %211, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %214 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %213, i32 0, i32 2
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i32 %212, i32* %219, align 8
  br label %381

220:                                              ; preds = %151
  store i32 1, i32* %6, align 4
  br label %386

221:                                              ; preds = %141
  %222 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %223 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IORESOURCE_BITS, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @IORESOURCE_BITS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %221
  br label %378

239:                                              ; preds = %221
  br label %240

240:                                              ; preds = %239
  %241 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %242 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %241, i32 0, i32 2
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %240
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %308

260:                                              ; preds = %255, %240
  %261 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %262 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %261, i32 0, i32 2
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %267, align 8
  %269 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %270 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %269, i32 0, i32 2
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %280 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %279, i32 0, i32 2
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %10, align 4
  %290 = add i32 %288, %289
  %291 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %292 = call i64 @pcmcia_adjust_io_region(%struct.TYPE_5__* %268, i32 %278, i32 %290, %struct.pcmcia_socket* %291)
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %260
  %295 = load i32, i32* %13, align 4
  %296 = load i32*, i32** %9, align 8
  store i32 %295, i32* %296, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %299 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %298, i32 0, i32 2
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %299, align 8
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = add i32 %305, %297
  store i32 %306, i32* %304, align 8
  br label %381

307:                                              ; preds = %260
  br label %308

308:                                              ; preds = %307, %255
  %309 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %310 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %309, i32 0, i32 2
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = load i32, i32* %12, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %10, align 4
  %320 = sub i32 %318, %319
  store i32 %320, i32* %13, align 4
  %321 = load i32*, i32** %9, align 8
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %308
  %325 = load i32*, i32** %9, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %13, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %377

329:                                              ; preds = %324, %308
  %330 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %331 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %330, i32 0, i32 2
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %331, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %339 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %338, i32 0, i32 2
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %339, align 8
  %341 = load i32, i32* %12, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %10, align 4
  %349 = sub i32 %347, %348
  %350 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %351 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %350, i32 0, i32 2
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %351, align 8
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %361 = call i64 @pcmcia_adjust_io_region(%struct.TYPE_5__* %337, i32 %349, i32 %359, %struct.pcmcia_socket* %360)
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %376

363:                                              ; preds = %329
  %364 = load i32, i32* %13, align 4
  %365 = load i32*, i32** %9, align 8
  store i32 %364, i32* %365, align 4
  %366 = load i32, i32* %10, align 4
  %367 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %368 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %367, i32 0, i32 2
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %368, align 8
  %370 = load i32, i32* %12, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = add i32 %374, %366
  store i32 %375, i32* %373, align 8
  br label %381

376:                                              ; preds = %329
  br label %377

377:                                              ; preds = %376, %324
  br label %378

378:                                              ; preds = %377, %238
  %379 = load i32, i32* %12, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %12, align 4
  br label %137

381:                                              ; preds = %363, %294, %174, %137
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* @MAX_IO_WIN, align 4
  %384 = icmp eq i32 %382, %383
  %385 = zext i1 %384 to i32
  store i32 %385, i32* %6, align 4
  br label %386

386:                                              ; preds = %381, %220, %131, %86
  %387 = load i32, i32* %6, align 4
  ret i32 %387
}

declare dso_local i32 @ds_dbg(%struct.pcmcia_socket*, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @pcmcia_find_io_region(i32, i32, i32, %struct.pcmcia_socket*) #1

declare dso_local i64 @pcmcia_adjust_io_region(%struct.TYPE_5__*, i32, i32, %struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
