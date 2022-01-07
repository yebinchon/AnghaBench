; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_failed_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_failed_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stripe_head = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.bio*, %struct.bio*, %struct.bio* }
%struct.bio = type { i64, %struct.bio*, i32 }
%struct.stripe_head_state = type { i32 }
%struct.md_rdev = type { i32, i32 }

@R5_ReadError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_Overlap = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@R5_Wantfill = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@STRIPE_FULL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32, %struct.bio**)* @handle_failed_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_failed_stripe(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2, i32 %3, %struct.bio** %4) #0 {
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca %struct.stripe_head_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca %struct.bio*, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca %struct.bio*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %6, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %7, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.bio** %4, %struct.bio*** %10, align 8
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %392, %5
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %402

23:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @R5_ReadError, align 4
  %25 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %26 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %24, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %23
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.md_rdev* @rcu_dereference(i32 %43)
  store %struct.md_rdev* %44, %struct.md_rdev** %14, align 8
  %45 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %46 = icmp ne %struct.md_rdev* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %34
  %48 = load i32, i32* @In_sync, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  br label %58

57:                                               ; preds = %47, %34
  store %struct.md_rdev* null, %struct.md_rdev** %14, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %61 = icmp ne %struct.md_rdev* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %64 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %65 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* @STRIPE_SECTORS, align 8
  %68 = call i32 @rdev_set_badblocks(%struct.md_rdev* %63, i32 %66, i64 %67, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %72 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %75 = call i32 @md_error(%struct.TYPE_8__* %73, %struct.md_rdev* %74)
  br label %76

76:                                               ; preds = %70, %62
  %77 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %78 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %79 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @rdev_dec_pending(%struct.md_rdev* %77, %struct.TYPE_8__* %80)
  br label %82

82:                                               ; preds = %76, %58
  br label %83

83:                                               ; preds = %82, %23
  %84 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %85 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %84, i32 0, i32 3
  %86 = call i32 @spin_lock_irq(i32* %85)
  %87 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %88 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load %struct.bio*, %struct.bio** %93, align 8
  store %struct.bio* %94, %struct.bio** %12, align 8
  %95 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %96 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  store %struct.bio* null, %struct.bio** %101, align 8
  %102 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %103 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %102, i32 0, i32 3
  %104 = call i32 @spin_unlock_irq(i32* %103)
  %105 = load %struct.bio*, %struct.bio** %12, align 8
  %106 = icmp ne %struct.bio* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %83
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %83
  %109 = load i32, i32* @R5_Overlap, align 4
  %110 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %111 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = call i64 @test_and_clear_bit(i32 %109, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %121 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %120, i32 0, i32 2
  %122 = call i32 @wake_up(i32* %121)
  br label %123

123:                                              ; preds = %119, %108
  br label %124

124:                                              ; preds = %173, %123
  %125 = load %struct.bio*, %struct.bio** %12, align 8
  %126 = icmp ne %struct.bio* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load %struct.bio*, %struct.bio** %12, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %132 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @STRIPE_SECTORS, align 8
  %140 = add nsw i64 %138, %139
  %141 = icmp slt i64 %130, %140
  br label %142

142:                                              ; preds = %127, %124
  %143 = phi i1 [ false, %124 ], [ %141, %127 ]
  br i1 %143, label %144, label %175

144:                                              ; preds = %142
  %145 = load %struct.bio*, %struct.bio** %12, align 8
  %146 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %147 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call %struct.bio* @r5_next_bio(%struct.bio* %145, i64 %153)
  store %struct.bio* %154, %struct.bio** %15, align 8
  %155 = load i32, i32* @BIO_UPTODATE, align 4
  %156 = load %struct.bio*, %struct.bio** %12, align 8
  %157 = getelementptr inbounds %struct.bio, %struct.bio* %156, i32 0, i32 2
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  %159 = load %struct.bio*, %struct.bio** %12, align 8
  %160 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %144
  %163 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %164 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = call i32 @md_write_end(%struct.TYPE_8__* %165)
  %167 = load %struct.bio**, %struct.bio*** %10, align 8
  %168 = load %struct.bio*, %struct.bio** %167, align 8
  %169 = load %struct.bio*, %struct.bio** %12, align 8
  %170 = getelementptr inbounds %struct.bio, %struct.bio* %169, i32 0, i32 1
  store %struct.bio* %168, %struct.bio** %170, align 8
  %171 = load %struct.bio*, %struct.bio** %12, align 8
  %172 = load %struct.bio**, %struct.bio*** %10, align 8
  store %struct.bio* %171, %struct.bio** %172, align 8
  br label %173

173:                                              ; preds = %162, %144
  %174 = load %struct.bio*, %struct.bio** %15, align 8
  store %struct.bio* %174, %struct.bio** %12, align 8
  br label %124

175:                                              ; preds = %142
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %180 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %185 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* @STRIPE_SECTORS, align 8
  %188 = call i32 @bitmap_endwrite(i32 %183, i32 %186, i64 %187, i32 0, i32 0)
  br label %189

189:                                              ; preds = %178, %175
  store i32 0, i32* %13, align 4
  %190 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %191 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load %struct.bio*, %struct.bio** %196, align 8
  store %struct.bio* %197, %struct.bio** %12, align 8
  %198 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %199 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %198, i32 0, i32 1
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  store %struct.bio* null, %struct.bio** %204, align 8
  %205 = load %struct.bio*, %struct.bio** %12, align 8
  %206 = icmp ne %struct.bio* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %189
  store i32 1, i32* %13, align 4
  br label %208

208:                                              ; preds = %207, %189
  br label %209

209:                                              ; preds = %258, %208
  %210 = load %struct.bio*, %struct.bio** %12, align 8
  %211 = icmp ne %struct.bio* %210, null
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load %struct.bio*, %struct.bio** %12, align 8
  %214 = getelementptr inbounds %struct.bio, %struct.bio* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %217 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %216, i32 0, i32 1
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @STRIPE_SECTORS, align 8
  %225 = add nsw i64 %223, %224
  %226 = icmp slt i64 %215, %225
  br label %227

227:                                              ; preds = %212, %209
  %228 = phi i1 [ false, %209 ], [ %226, %212 ]
  br i1 %228, label %229, label %260

229:                                              ; preds = %227
  %230 = load %struct.bio*, %struct.bio** %12, align 8
  %231 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %232 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %231, i32 0, i32 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call %struct.bio* @r5_next_bio(%struct.bio* %230, i64 %238)
  store %struct.bio* %239, %struct.bio** %16, align 8
  %240 = load i32, i32* @BIO_UPTODATE, align 4
  %241 = load %struct.bio*, %struct.bio** %12, align 8
  %242 = getelementptr inbounds %struct.bio, %struct.bio* %241, i32 0, i32 2
  %243 = call i32 @clear_bit(i32 %240, i32* %242)
  %244 = load %struct.bio*, %struct.bio** %12, align 8
  %245 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %258, label %247

247:                                              ; preds = %229
  %248 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %249 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %248, i32 0, i32 0
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = call i32 @md_write_end(%struct.TYPE_8__* %250)
  %252 = load %struct.bio**, %struct.bio*** %10, align 8
  %253 = load %struct.bio*, %struct.bio** %252, align 8
  %254 = load %struct.bio*, %struct.bio** %12, align 8
  %255 = getelementptr inbounds %struct.bio, %struct.bio* %254, i32 0, i32 1
  store %struct.bio* %253, %struct.bio** %255, align 8
  %256 = load %struct.bio*, %struct.bio** %12, align 8
  %257 = load %struct.bio**, %struct.bio*** %10, align 8
  store %struct.bio* %256, %struct.bio** %257, align 8
  br label %258

258:                                              ; preds = %247, %229
  %259 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %259, %struct.bio** %12, align 8
  br label %209

260:                                              ; preds = %227
  %261 = load i32, i32* @R5_Wantfill, align 4
  %262 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %263 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %262, i32 0, i32 1
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = call i64 @test_bit(i32 %261, i32* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %378, label %271

271:                                              ; preds = %260
  %272 = load i32, i32* @R5_Insync, align 4
  %273 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %274 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %273, i32 0, i32 1
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = call i64 @test_bit(i32 %272, i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %271
  %283 = load i32, i32* @R5_ReadError, align 4
  %284 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %285 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %284, i32 0, i32 1
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = call i64 @test_bit(i32 %283, i32* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %378

293:                                              ; preds = %282, %271
  %294 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %295 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %294, i32 0, i32 3
  %296 = call i32 @spin_lock_irq(i32* %295)
  %297 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %298 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %297, i32 0, i32 1
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 2
  %304 = load %struct.bio*, %struct.bio** %303, align 8
  store %struct.bio* %304, %struct.bio** %12, align 8
  %305 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %306 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %305, i32 0, i32 1
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %311, align 8
  %312 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %313 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %312, i32 0, i32 3
  %314 = call i32 @spin_unlock_irq(i32* %313)
  %315 = load i32, i32* @R5_Overlap, align 4
  %316 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %317 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %316, i32 0, i32 1
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %317, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 1
  %323 = call i64 @test_and_clear_bit(i32 %315, i32* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %293
  %326 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %327 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %326, i32 0, i32 2
  %328 = call i32 @wake_up(i32* %327)
  br label %329

329:                                              ; preds = %325, %293
  br label %330

330:                                              ; preds = %375, %329
  %331 = load %struct.bio*, %struct.bio** %12, align 8
  %332 = icmp ne %struct.bio* %331, null
  br i1 %332, label %333, label %348

333:                                              ; preds = %330
  %334 = load %struct.bio*, %struct.bio** %12, align 8
  %335 = getelementptr inbounds %struct.bio, %struct.bio* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %338 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %337, i32 0, i32 1
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @STRIPE_SECTORS, align 8
  %346 = add nsw i64 %344, %345
  %347 = icmp slt i64 %336, %346
  br label %348

348:                                              ; preds = %333, %330
  %349 = phi i1 [ false, %330 ], [ %347, %333 ]
  br i1 %349, label %350, label %377

350:                                              ; preds = %348
  %351 = load %struct.bio*, %struct.bio** %12, align 8
  %352 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %353 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %352, i32 0, i32 1
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call %struct.bio* @r5_next_bio(%struct.bio* %351, i64 %359)
  store %struct.bio* %360, %struct.bio** %17, align 8
  %361 = load i32, i32* @BIO_UPTODATE, align 4
  %362 = load %struct.bio*, %struct.bio** %12, align 8
  %363 = getelementptr inbounds %struct.bio, %struct.bio* %362, i32 0, i32 2
  %364 = call i32 @clear_bit(i32 %361, i32* %363)
  %365 = load %struct.bio*, %struct.bio** %12, align 8
  %366 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %375, label %368

368:                                              ; preds = %350
  %369 = load %struct.bio**, %struct.bio*** %10, align 8
  %370 = load %struct.bio*, %struct.bio** %369, align 8
  %371 = load %struct.bio*, %struct.bio** %12, align 8
  %372 = getelementptr inbounds %struct.bio, %struct.bio* %371, i32 0, i32 1
  store %struct.bio* %370, %struct.bio** %372, align 8
  %373 = load %struct.bio*, %struct.bio** %12, align 8
  %374 = load %struct.bio**, %struct.bio*** %10, align 8
  store %struct.bio* %373, %struct.bio** %374, align 8
  br label %375

375:                                              ; preds = %368, %350
  %376 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %376, %struct.bio** %12, align 8
  br label %330

377:                                              ; preds = %348
  br label %378

378:                                              ; preds = %377, %282, %260
  %379 = load i32, i32* %13, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %392

381:                                              ; preds = %378
  %382 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %383 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %382, i32 0, i32 0
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %388 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load i64, i64* @STRIPE_SECTORS, align 8
  %391 = call i32 @bitmap_endwrite(i32 %386, i32 %389, i64 %390, i32 0, i32 0)
  br label %392

392:                                              ; preds = %381, %378
  %393 = load i32, i32* @R5_LOCKED, align 4
  %394 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %395 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %394, i32 0, i32 1
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %395, align 8
  %397 = load i32, i32* %11, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 1
  %401 = call i32 @clear_bit(i32 %393, i32* %400)
  br label %19

402:                                              ; preds = %19
  %403 = load i32, i32* @STRIPE_FULL_WRITE, align 4
  %404 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %405 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %404, i32 0, i32 0
  %406 = call i64 @test_and_clear_bit(i32 %403, i32* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %421

408:                                              ; preds = %402
  %409 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %410 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %409, i32 0, i32 1
  %411 = call i64 @atomic_dec_and_test(i32* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %408
  %414 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %415 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %414, i32 0, i32 0
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @md_wakeup_thread(i32 %418)
  br label %420

420:                                              ; preds = %413, %408
  br label %421

421:                                              ; preds = %420, %402
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i64, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_8__*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.bio* @r5_next_bio(%struct.bio*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @raid5_dec_bi_active_stripes(%struct.bio*) #1

declare dso_local i32 @md_write_end(%struct.TYPE_8__*) #1

declare dso_local i32 @bitmap_endwrite(i32, i32, i64, i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
