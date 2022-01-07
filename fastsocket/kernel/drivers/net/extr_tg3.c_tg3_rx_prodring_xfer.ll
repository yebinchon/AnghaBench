; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_rx_prodring_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_rx_prodring_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }
%struct.tg3_rx_prodring_set = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.tg3_rx_buffer_desc*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.tg3_rx_buffer_desc }
%struct.tg3_rx_buffer_desc = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set*)* @tg3_rx_prodring_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_rx_prodring_xfer(%struct.tg3* %0, %struct.tg3_rx_prodring_set* %1, %struct.tg3_rx_prodring_set* %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca %struct.tg3_rx_prodring_set*, align 8
  %6 = alloca %struct.tg3_rx_prodring_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %14 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %15 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %16 = alloca %struct.tg3_rx_buffer_desc*, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store %struct.tg3_rx_prodring_set* %1, %struct.tg3_rx_prodring_set** %5, align 8
  store %struct.tg3_rx_prodring_set* %2, %struct.tg3_rx_prodring_set** %6, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %3, %150
  %18 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %19 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = call i32 (...) @smp_rmb()
  %22 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %23 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %173

28:                                               ; preds = %17
  %29 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %30 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %37 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.tg3*, %struct.tg3** %4, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %46 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %40, %34
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.tg3*, %struct.tg3** %4, align 8
  %52 = getelementptr inbounds %struct.tg3, %struct.tg3* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %56 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = call i32 @min(i32 %50, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %61 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %64 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %90, %49
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %75 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %74, i32 0, i32 7
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %93

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %67

93:                                               ; preds = %83, %67
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %173

97:                                               ; preds = %93
  %98 = call i32 (...) @smp_rmb()
  %99 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %100 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %99, i32 0, i32 7
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %106 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %105, i32 0, i32 7
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i32 @memcpy(%struct.TYPE_5__* %104, %struct.TYPE_5__* %110, i32 %114)
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %143, %97
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %116
  %121 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %122 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %121, i32 0, i32 6
  %123 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %123, i64 %125
  store %struct.tg3_rx_buffer_desc* %126, %struct.tg3_rx_buffer_desc** %13, align 8
  %127 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %128 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %127, i32 0, i32 6
  %129 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %129, i64 %131
  store %struct.tg3_rx_buffer_desc* %132, %struct.tg3_rx_buffer_desc** %14, align 8
  %133 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %13, align 8
  %134 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %14, align 8
  %137 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %13, align 8
  %139 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %14, align 8
  %142 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %120
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %116

150:                                              ; preds = %116
  %151 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %152 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %153, %154
  %156 = load %struct.tg3*, %struct.tg3** %4, align 8
  %157 = getelementptr inbounds %struct.tg3, %struct.tg3* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %155, %158
  %160 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %161 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %163 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %164, %165
  %167 = load %struct.tg3*, %struct.tg3** %4, align 8
  %168 = getelementptr inbounds %struct.tg3, %struct.tg3* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %166, %169
  %171 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %172 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %17

173:                                              ; preds = %96, %27
  br label %174

174:                                              ; preds = %173, %309
  %175 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %176 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %10, align 4
  %178 = call i32 (...) @smp_rmb()
  %179 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %180 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %332

185:                                              ; preds = %174
  %186 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %187 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %194 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %192, %195
  store i32 %196, i32* %9, align 4
  br label %206

197:                                              ; preds = %185
  %198 = load %struct.tg3*, %struct.tg3** %4, align 8
  %199 = getelementptr inbounds %struct.tg3, %struct.tg3* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  %202 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %203 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %197, %191
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.tg3*, %struct.tg3** %4, align 8
  %209 = getelementptr inbounds %struct.tg3, %struct.tg3* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  %212 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %213 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %211, %214
  %216 = call i32 @min(i32 %207, i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %218 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %7, align 4
  %220 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %221 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %247, %206
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %226, %227
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %250

230:                                              ; preds = %224
  %231 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %232 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %231, i32 0, i32 5
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %230
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %8, align 4
  %243 = sub nsw i32 %241, %242
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* @ENOSPC, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %12, align 4
  br label %250

246:                                              ; preds = %230
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  br label %224

250:                                              ; preds = %240, %224
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  br label %332

254:                                              ; preds = %250
  %255 = call i32 (...) @smp_rmb()
  %256 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %257 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %256, i32 0, i32 5
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i64 %260
  %262 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %263 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %262, i32 0, i32 5
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i64 %266
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = mul i64 %269, 4
  %271 = trunc i64 %270 to i32
  %272 = call i32 @memcpy(%struct.TYPE_5__* %261, %struct.TYPE_5__* %267, i32 %271)
  store i32 0, i32* %11, align 4
  br label %273

273:                                              ; preds = %302, %254
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %309

277:                                              ; preds = %273
  %278 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %279 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %278, i32 0, i32 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  store %struct.tg3_rx_buffer_desc* %284, %struct.tg3_rx_buffer_desc** %15, align 8
  %285 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %286 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %285, i32 0, i32 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  store %struct.tg3_rx_buffer_desc* %291, %struct.tg3_rx_buffer_desc** %16, align 8
  %292 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %293 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %16, align 8
  %296 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %298 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %16, align 8
  %301 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %277
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %11, align 4
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %7, align 4
  br label %273

309:                                              ; preds = %273
  %310 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %311 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %312, %313
  %315 = load %struct.tg3*, %struct.tg3** %4, align 8
  %316 = getelementptr inbounds %struct.tg3, %struct.tg3* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %314, %317
  %319 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %6, align 8
  %320 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %319, i32 0, i32 3
  store i32 %318, i32* %320, align 4
  %321 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %322 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %323, %324
  %326 = load %struct.tg3*, %struct.tg3** %4, align 8
  %327 = getelementptr inbounds %struct.tg3, %struct.tg3* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %325, %328
  %330 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %5, align 8
  %331 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  br label %174

332:                                              ; preds = %253, %184
  %333 = load i32, i32* %12, align 4
  ret i32 %333
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
