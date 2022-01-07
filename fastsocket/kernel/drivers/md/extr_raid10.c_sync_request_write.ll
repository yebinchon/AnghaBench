; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_sync_request_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_sync_request_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__*, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.r10bio = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.bio*, %struct.bio*, i32 }
%struct.bio = type { i32, i64, i32, i32, %struct.TYPE_7__*, i32, i32, %struct.r10bio*, i32, i32*, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@end_sync_read = common dso_local global i64 0, align 8
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@BIO_POOL_MASK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@end_sync_write = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10bio*)* @sync_request_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_request_write(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 2
  %19 = load %struct.r10conf*, %struct.r10conf** %18, align 8
  store %struct.r10conf* %19, %struct.r10conf** %5, align 8
  %20 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %21 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %20, i32 0, i32 1
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %44, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %26 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i32, i32* @BIO_UPTODATE, align 4
  %31 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %32 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.bio*, %struct.bio** %37, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %30, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %47

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %23

47:                                               ; preds = %42, %23
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %50 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %448

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %57 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.bio*, %struct.bio** %62, align 8
  store %struct.bio* %63, %struct.bio** %9, align 8
  %64 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %65 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = ashr i32 %67, 9
  %69 = add nsw i32 %66, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = sub nsw i32 %71, 9
  %73 = ashr i32 %70, %72
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %336, %54
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %77 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %339

80:                                               ; preds = %74
  %81 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %82 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.bio*, %struct.bio** %87, align 8
  store %struct.bio* %88, %struct.bio** %8, align 8
  %89 = load %struct.bio*, %struct.bio** %8, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @end_sync_read, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %336

95:                                               ; preds = %80
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %336

100:                                              ; preds = %95
  %101 = load i32, i32* @BIO_UPTODATE, align 4
  %102 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %103 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.bio*, %struct.bio** %108, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 0
  %111 = call i64 @test_bit(i32 %101, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %180

113:                                              ; preds = %100
  %114 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %115 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %158, %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %161

121:                                              ; preds = %117
  %122 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sdiv i32 %124, 512
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* %13, align 4
  %129 = mul nsw i32 %128, 512
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %127, %121
  %131 = load %struct.bio*, %struct.bio** %9, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @page_address(i32 %138)
  %140 = load %struct.bio*, %struct.bio** %8, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @page_address(i32 %147)
  %149 = load i32, i32* %14, align 4
  %150 = call i64 @memcmp(i32 %139, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %130
  br label %161

153:                                              ; preds = %130
  %154 = load i32, i32* %14, align 4
  %155 = sdiv i32 %154, 512
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %117

161:                                              ; preds = %152, %117
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %336

166:                                              ; preds = %161
  %167 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %168 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mddev*, %struct.mddev** %3, align 8
  %171 = getelementptr inbounds %struct.mddev, %struct.mddev* %170, i32 0, i32 1
  %172 = call i32 @atomic64_add(i32 %169, i32* %171)
  %173 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %174 = load %struct.mddev*, %struct.mddev** %3, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 0
  %176 = call i64 @test_bit(i32 %173, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  br label %336

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %100
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.bio*, %struct.bio** %8, align 8
  %183 = getelementptr inbounds %struct.bio, %struct.bio* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %185 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 %186, 9
  %188 = load %struct.bio*, %struct.bio** %8, align 8
  %189 = getelementptr inbounds %struct.bio, %struct.bio* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.bio*, %struct.bio** %8, align 8
  %191 = getelementptr inbounds %struct.bio, %struct.bio* %190, i32 0, i32 11
  store i64 0, i64* %191, align 8
  %192 = load %struct.bio*, %struct.bio** %8, align 8
  %193 = getelementptr inbounds %struct.bio, %struct.bio* %192, i32 0, i32 10
  store i64 0, i64* %193, align 8
  %194 = load i32, i32* @BIO_POOL_MASK, align 4
  %195 = sub nsw i32 %194, 1
  %196 = xor i32 %195, -1
  %197 = load %struct.bio*, %struct.bio** %8, align 8
  %198 = getelementptr inbounds %struct.bio, %struct.bio* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = load i32, i32* @BIO_UPTODATE, align 4
  %202 = shl i32 1, %201
  %203 = load %struct.bio*, %struct.bio** %8, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load %struct.bio*, %struct.bio** %8, align 8
  %208 = getelementptr inbounds %struct.bio, %struct.bio* %207, i32 0, i32 9
  store i32* null, i32** %208, align 8
  %209 = load i32, i32* @WRITE, align 4
  %210 = load %struct.bio*, %struct.bio** %8, align 8
  %211 = getelementptr inbounds %struct.bio, %struct.bio* %210, i32 0, i32 8
  store i32 %209, i32* %211, align 8
  %212 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %213 = load %struct.bio*, %struct.bio** %8, align 8
  %214 = getelementptr inbounds %struct.bio, %struct.bio* %213, i32 0, i32 7
  store %struct.r10bio* %212, %struct.r10bio** %214, align 8
  %215 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %216 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %215, i32 0, i32 2
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.bio*, %struct.bio** %8, align 8
  %224 = getelementptr inbounds %struct.bio, %struct.bio* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 4
  store i32 0, i32* %11, align 4
  br label %225

225:                                              ; preds = %265, %180
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %268

229:                                              ; preds = %225
  %230 = load %struct.bio*, %struct.bio** %8, align 8
  %231 = getelementptr inbounds %struct.bio, %struct.bio* %230, i32 0, i32 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  store i64 0, i64* %236, align 8
  %237 = load i32, i32* @PAGE_SIZE, align 4
  %238 = load %struct.bio*, %struct.bio** %8, align 8
  %239 = getelementptr inbounds %struct.bio, %struct.bio* %238, i32 0, i32 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  store i32 %237, i32* %244, align 8
  %245 = load %struct.bio*, %struct.bio** %8, align 8
  %246 = getelementptr inbounds %struct.bio, %struct.bio* %245, i32 0, i32 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @page_address(i32 %252)
  %254 = load %struct.bio*, %struct.bio** %9, align 8
  %255 = getelementptr inbounds %struct.bio, %struct.bio* %254, i32 0, i32 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @page_address(i32 %261)
  %263 = load i32, i32* @PAGE_SIZE, align 4
  %264 = call i32 @memcpy(i32 %253, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %229
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %225

268:                                              ; preds = %225
  %269 = load i64, i64* @end_sync_write, align 8
  %270 = load %struct.bio*, %struct.bio** %8, align 8
  %271 = getelementptr inbounds %struct.bio, %struct.bio* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  %272 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %273 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %272, i32 0, i32 2
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  store i32 %279, i32* %12, align 4
  %280 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %281 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %280, i32 0, i32 1
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 2
  %289 = call i32 @atomic_inc(i32* %288)
  %290 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %291 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %290, i32 0, i32 1
  %292 = call i32 @atomic_inc(i32* %291)
  %293 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %294 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %293, i32 0, i32 1
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.bio*, %struct.bio** %8, align 8
  %304 = call i32 @bio_sectors(%struct.bio* %303)
  %305 = call i32 @md_sync_acct(i32 %302, i32 %304)
  %306 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %307 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %306, i32 0, i32 1
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.bio*, %struct.bio** %8, align 8
  %317 = getelementptr inbounds %struct.bio, %struct.bio* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %319, %315
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %317, align 4
  %322 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %323 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %322, i32 0, i32 1
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.bio*, %struct.bio** %8, align 8
  %333 = getelementptr inbounds %struct.bio, %struct.bio* %332, i32 0, i32 5
  store i32 %331, i32* %333, align 8
  %334 = load %struct.bio*, %struct.bio** %8, align 8
  %335 = call i32 @generic_make_request(%struct.bio* %334)
  br label %336

336:                                              ; preds = %268, %178, %165, %99, %94
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %74

339:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %340

340:                                              ; preds = %444, %339
  %341 = load i32, i32* %6, align 4
  %342 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %343 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %341, %344
  br i1 %345, label %346, label %447

346:                                              ; preds = %340
  %347 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %348 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %347, i32 0, i32 2
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 2
  %354 = load %struct.bio*, %struct.bio** %353, align 8
  store %struct.bio* %354, %struct.bio** %8, align 8
  %355 = load %struct.bio*, %struct.bio** %8, align 8
  %356 = icmp ne %struct.bio* %355, null
  br i1 %356, label %357, label %362

357:                                              ; preds = %346
  %358 = load %struct.bio*, %struct.bio** %8, align 8
  %359 = getelementptr inbounds %struct.bio, %struct.bio* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %357, %346
  br label %444

363:                                              ; preds = %357
  %364 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %365 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %364, i32 0, i32 2
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 1
  %371 = load %struct.bio*, %struct.bio** %370, align 8
  %372 = getelementptr inbounds %struct.bio, %struct.bio* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @end_sync_write, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %417

376:                                              ; preds = %363
  %377 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %378 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %377, i32 0, i32 2
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 1
  %384 = load %struct.bio*, %struct.bio** %383, align 8
  %385 = load %struct.bio*, %struct.bio** %9, align 8
  %386 = icmp ne %struct.bio* %384, %385
  br i1 %386, label %387, label %417

387:                                              ; preds = %376
  store i32 0, i32* %15, align 4
  br label %388

388:                                              ; preds = %413, %387
  %389 = load i32, i32* %15, align 4
  %390 = load i32, i32* %10, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %416

392:                                              ; preds = %388
  %393 = load %struct.bio*, %struct.bio** %8, align 8
  %394 = getelementptr inbounds %struct.bio, %struct.bio* %393, i32 0, i32 4
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %394, align 8
  %396 = load i32, i32* %15, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @page_address(i32 %400)
  %402 = load %struct.bio*, %struct.bio** %9, align 8
  %403 = getelementptr inbounds %struct.bio, %struct.bio* %402, i32 0, i32 4
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %403, align 8
  %405 = load i32, i32* %15, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @page_address(i32 %409)
  %411 = load i32, i32* @PAGE_SIZE, align 4
  %412 = call i32 @memcpy(i32 %401, i32 %410, i32 %411)
  br label %413

413:                                              ; preds = %392
  %414 = load i32, i32* %15, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %15, align 4
  br label %388

416:                                              ; preds = %388
  br label %417

417:                                              ; preds = %416, %376, %363
  %418 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %419 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %418, i32 0, i32 2
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %419, align 8
  %421 = load i32, i32* %6, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  store i32 %425, i32* %16, align 4
  %426 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %427 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %426, i32 0, i32 1
  %428 = call i32 @atomic_inc(i32* %427)
  %429 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %430 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %429, i32 0, i32 1
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %430, align 8
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.bio*, %struct.bio** %8, align 8
  %440 = call i32 @bio_sectors(%struct.bio* %439)
  %441 = call i32 @md_sync_acct(i32 %438, i32 %440)
  %442 = load %struct.bio*, %struct.bio** %8, align 8
  %443 = call i32 @generic_make_request(%struct.bio* %442)
  br label %444

444:                                              ; preds = %417, %362
  %445 = load i32, i32* %6, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %6, align 4
  br label %340

447:                                              ; preds = %340
  br label %448

448:                                              ; preds = %447, %53
  %449 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %450 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %449, i32 0, i32 1
  %451 = call i64 @atomic_dec_and_test(i32* %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %461

453:                                              ; preds = %448
  %454 = load %struct.mddev*, %struct.mddev** %3, align 8
  %455 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %456 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @md_done_sync(%struct.mddev* %454, i32 %457, i32 1)
  %459 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %460 = call i32 @put_buf(%struct.r10bio* %459)
  br label %461

461:                                              ; preds = %453, %448
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @md_sync_acct(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

declare dso_local i32 @put_buf(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
