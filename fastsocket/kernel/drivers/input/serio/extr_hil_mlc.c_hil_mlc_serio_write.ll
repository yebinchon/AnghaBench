; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hil_mlc.c_hil_mlc_serio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hil_mlc.c_hil_mlc_serio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serio_driver*, %struct.hil_mlc_serio_map* }
%struct.serio_driver = type { i32 (%struct.serio.0*, i64, i32)* }
%struct.serio.0 = type opaque
%struct.hil_mlc_serio_map = type { i64, %struct.hil_mlc* }
%struct.hil_mlc = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64*, i64*, i64* }

@HIL_PKT_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HIL_PKT_DATA_MASK = common dso_local global i32 0, align 4
@HIL_ERR_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @hil_mlc_serio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hil_mlc_serio_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.hil_mlc_serio_map*, align 8
  %7 = alloca %struct.hil_mlc*, align 8
  %8 = alloca %struct.serio_driver*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load %struct.serio*, %struct.serio** %4, align 8
  %12 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 1
  %13 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %12, align 8
  store %struct.hil_mlc_serio_map* %13, %struct.hil_mlc_serio_map** %6, align 8
  %14 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %15 = icmp eq %struct.hil_mlc_serio_map* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %19 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %18, i32 0, i32 1
  %20 = load %struct.hil_mlc*, %struct.hil_mlc** %19, align 8
  store %struct.hil_mlc* %20, %struct.hil_mlc** %7, align 8
  %21 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %22 = icmp eq %struct.hil_mlc* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %28 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %31 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 3, %34
  %36 = mul nsw i32 8, %35
  %37 = shl i32 %26, %36
  %38 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %39 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %42 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %37
  store i32 %46, i32* %44, align 4
  %47 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %48 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %51 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 3
  br i1 %55, label %56, label %138

56:                                               ; preds = %2
  %57 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %58 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %61 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HIL_PKT_CMD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %257

71:                                               ; preds = %56
  %72 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %73 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %76 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HIL_PKT_DATA_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %122 [
    i32 130, label %82
    i32 128, label %92
    i32 131, label %102
    i32 129, label %112
  ]

82:                                               ; preds = %71
  %83 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %84 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %87 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  store i64* %91, i64** %9, align 8
  br label %150

92:                                               ; preds = %71
  %93 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %94 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %97 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  store i64* %101, i64** %9, align 8
  br label %150

102:                                              ; preds = %71
  %103 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %104 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %107 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  store i64* %111, i64** %9, align 8
  br label %150

112:                                              ; preds = %71
  %113 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %114 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %117 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  store i64* %121, i64** %9, align 8
  br label %150

122:                                              ; preds = %71
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %125 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %128 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 0, i32* %130, align 4
  %131 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %132 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %135 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %123, %2
  %139 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %140 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %143 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %257

150:                                              ; preds = %112, %102, %92, %82
  %151 = load %struct.serio*, %struct.serio** %4, align 8
  %152 = getelementptr inbounds %struct.serio, %struct.serio* %151, i32 0, i32 0
  %153 = load %struct.serio_driver*, %struct.serio_driver** %152, align 8
  store %struct.serio_driver* %153, %struct.serio_driver** %8, align 8
  %154 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %155 = icmp eq %struct.serio_driver* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @BUG_ON(i32 %156)
  %158 = load i64*, i64** %9, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 15
  store i64* %159, i64** %10, align 8
  br label %160

160:                                              ; preds = %170, %150
  %161 = load i64*, i64** %10, align 8
  %162 = load i64*, i64** %9, align 8
  %163 = icmp ne i64* %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64*, i64** %10, align 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br label %168

168:                                              ; preds = %164, %160
  %169 = phi i1 [ false, %160 ], [ %167, %164 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i64*, i64** %10, align 8
  %172 = getelementptr inbounds i64, i64* %171, i32 -1
  store i64* %172, i64** %10, align 8
  br label %160

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %178, %173
  %175 = load i64*, i64** %9, align 8
  %176 = load i64*, i64** %10, align 8
  %177 = icmp ne i64* %175, %176
  br i1 %177, label %178, label %210

178:                                              ; preds = %174
  %179 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %180 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %179, i32 0, i32 0
  %181 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %180, align 8
  %182 = load %struct.serio*, %struct.serio** %4, align 8
  %183 = bitcast %struct.serio* %182 to %struct.serio.0*
  %184 = call i32 %181(%struct.serio.0* %183, i64 0, i32 0)
  %185 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %186 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %185, i32 0, i32 0
  %187 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %186, align 8
  %188 = load %struct.serio*, %struct.serio** %4, align 8
  %189 = bitcast %struct.serio* %188 to %struct.serio.0*
  %190 = load i32, i32* @HIL_ERR_INT, align 4
  %191 = ashr i32 %190, 16
  %192 = sext i32 %191 to i64
  %193 = call i32 %187(%struct.serio.0* %189, i64 %192, i32 0)
  %194 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %195 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %194, i32 0, i32 0
  %196 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %195, align 8
  %197 = load %struct.serio*, %struct.serio** %4, align 8
  %198 = bitcast %struct.serio* %197 to %struct.serio.0*
  %199 = call i32 %196(%struct.serio.0* %198, i64 0, i32 0)
  %200 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %201 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %200, i32 0, i32 0
  %202 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %201, align 8
  %203 = load %struct.serio*, %struct.serio** %4, align 8
  %204 = bitcast %struct.serio* %203 to %struct.serio.0*
  %205 = load i64*, i64** %9, align 8
  %206 = load i64, i64* %205, align 8
  %207 = call i32 %202(%struct.serio.0* %204, i64 %206, i32 0)
  %208 = load i64*, i64** %9, align 8
  %209 = getelementptr inbounds i64, i64* %208, i32 1
  store i64* %209, i64** %9, align 8
  br label %174

210:                                              ; preds = %174
  %211 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %212 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %211, i32 0, i32 0
  %213 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %212, align 8
  %214 = load %struct.serio*, %struct.serio** %4, align 8
  %215 = bitcast %struct.serio* %214 to %struct.serio.0*
  %216 = call i32 %213(%struct.serio.0* %215, i64 0, i32 0)
  %217 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %218 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %217, i32 0, i32 0
  %219 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %218, align 8
  %220 = load %struct.serio*, %struct.serio** %4, align 8
  %221 = bitcast %struct.serio* %220 to %struct.serio.0*
  %222 = load i32, i32* @HIL_ERR_INT, align 4
  %223 = ashr i32 %222, 16
  %224 = sext i32 %223 to i64
  %225 = call i32 %219(%struct.serio.0* %221, i64 %224, i32 0)
  %226 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %227 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %226, i32 0, i32 0
  %228 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %227, align 8
  %229 = load %struct.serio*, %struct.serio** %4, align 8
  %230 = bitcast %struct.serio* %229 to %struct.serio.0*
  %231 = load i32, i32* @HIL_PKT_CMD, align 4
  %232 = ashr i32 %231, 8
  %233 = sext i32 %232 to i64
  %234 = call i32 %228(%struct.serio.0* %230, i64 %233, i32 0)
  %235 = load %struct.serio_driver*, %struct.serio_driver** %8, align 8
  %236 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %235, i32 0, i32 0
  %237 = load i32 (%struct.serio.0*, i64, i32)*, i32 (%struct.serio.0*, i64, i32)** %236, align 8
  %238 = load %struct.serio*, %struct.serio** %4, align 8
  %239 = bitcast %struct.serio* %238 to %struct.serio.0*
  %240 = load i64*, i64** %9, align 8
  %241 = load i64, i64* %240, align 8
  %242 = call i32 %237(%struct.serio.0* %239, i64 %241, i32 0)
  %243 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %244 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %247 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 0, i32* %249, align 4
  %250 = load %struct.hil_mlc*, %struct.hil_mlc** %7, align 8
  %251 = getelementptr inbounds %struct.hil_mlc, %struct.hil_mlc* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  %254 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  store i32 0, i32* %256, align 4
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %210, %138, %68
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
