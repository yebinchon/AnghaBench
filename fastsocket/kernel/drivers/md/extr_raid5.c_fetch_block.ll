; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_fetch_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_fetch_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { %struct.TYPE_4__, %struct.r5dev*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.r5dev = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.stripe_head_state = type { i64*, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@R5_LOCKED = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@R5_Wantcompute = common dso_local global i32 0, align 4
@R5_Wantread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Computing stripe %llu block %d\0A\00", align 1
@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@STRIPE_OP_COMPUTE_BLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Computing stripe %llu blocks %d,%d\0A\00", align 1
@R5_Insync = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Reading block %d (sync=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, %struct.stripe_head_state*, i32, i32)* @fetch_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_block(%struct.stripe_head* %0, %struct.stripe_head_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca %struct.stripe_head_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5dev*, align 8
  %11 = alloca [2 x %struct.r5dev*], align 16
  %12 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %6, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %14 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %13, i32 0, i32 1
  %15 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %15, i64 %17
  store %struct.r5dev* %18, %struct.r5dev** %10, align 8
  %19 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 0
  %20 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 1
  %22 = load %struct.r5dev*, %struct.r5dev** %21, align 8
  %23 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %24 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %22, i64 %27
  store %struct.r5dev* %28, %struct.r5dev** %19, align 8
  %29 = getelementptr inbounds %struct.r5dev*, %struct.r5dev** %19, i64 1
  %30 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 1
  %32 = load %struct.r5dev*, %struct.r5dev** %31, align 8
  %33 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %34 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %32, i64 %37
  store %struct.r5dev* %38, %struct.r5dev** %29, align 8
  %39 = load i32, i32* @R5_LOCKED, align 4
  %40 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %41 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %337, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @R5_UPTODATE, align 4
  %46 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %47 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %46, i32 0, i32 0
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %337, label %50

50:                                               ; preds = %44
  %51 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %52 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %150, label %55

55:                                               ; preds = %50
  %56 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %57 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @R5_OVERWRITE, align 4
  %62 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %63 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %62, i32 0, i32 0
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %150

66:                                               ; preds = %60, %55
  %67 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %68 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %150, label %71

71:                                               ; preds = %66
  %72 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %73 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %150, label %76

76:                                               ; preds = %71
  %77 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %78 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @want_replace(%struct.stripe_head* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %150, label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %88 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 0
  %93 = load %struct.r5dev*, %struct.r5dev** %92, align 16
  %94 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %150, label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %99 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 2
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 1
  %104 = load %struct.r5dev*, %struct.r5dev** %103, align 8
  %105 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %150, label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %110 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %109, i32 0, i32 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sle i32 %113, 5
  br i1 %114, label %115, label %133

115:                                              ; preds = %108
  %116 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %117 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 0
  %122 = load %struct.r5dev*, %struct.r5dev** %121, align 16
  %123 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i32, i32* @R5_OVERWRITE, align 4
  %128 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 0
  %129 = load %struct.r5dev*, %struct.r5dev** %128, align 16
  %130 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %129, i32 0, i32 0
  %131 = call i32 @test_bit(i32 %127, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %126, %120, %115, %108
  %134 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %135 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %134, i32 0, i32 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 6
  br i1 %139, label %140, label %337

140:                                              ; preds = %133
  %141 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %142 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %337

145:                                              ; preds = %140
  %146 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %147 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %337

150:                                              ; preds = %145, %126, %102, %91, %81, %71, %66, %60, %50
  %151 = load i32, i32* @R5_Wantcompute, align 4
  %152 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %153 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %152, i32 0, i32 0
  %154 = call i32 @test_bit(i32 %151, i32* %153)
  %155 = call i32 @BUG_ON(i32 %154)
  %156 = load i32, i32* @R5_Wantread, align 4
  %157 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %158 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %157, i32 0, i32 0
  %159 = call i32 @test_bit(i32 %156, i32* %158)
  %160 = call i32 @BUG_ON(i32 %159)
  %161 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %162 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, 1
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %222

167:                                              ; preds = %150
  %168 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %169 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %222

172:                                              ; preds = %167
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %176 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %174, %179
  br i1 %180, label %190, label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %185 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %183, %188
  br i1 %189, label %190, label %222

190:                                              ; preds = %181, %172
  %191 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %192 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = load i32, i32* %8, align 4
  %196 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %198 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %199 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %198, i32 0, i32 2
  %200 = call i32 @set_bit(i32 %197, i32* %199)
  %201 = load i32, i32* @STRIPE_OP_COMPUTE_BLK, align 4
  %202 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %203 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %202, i32 0, i32 6
  %204 = call i32 @set_bit(i32 %201, i32* %203)
  %205 = load i32, i32* @R5_Wantcompute, align 4
  %206 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %207 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %206, i32 0, i32 0
  %208 = call i32 @set_bit(i32 %205, i32* %207)
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %211 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %214 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  store i32 -1, i32* %215, align 4
  %216 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %217 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %216, i32 0, i32 4
  store i32 1, i32* %217, align 4
  %218 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %219 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  store i32 1, i32* %5, align 4
  br label %338

222:                                              ; preds = %181, %167, %150
  %223 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %224 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sub nsw i32 %226, 2
  %228 = icmp eq i32 %225, %227
  br i1 %228, label %229, label %310

229:                                              ; preds = %222
  %230 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %231 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp sge i32 %232, 2
  br i1 %233, label %234, label %310

234:                                              ; preds = %229
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %257, %244, %234
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %12, align 4
  %239 = icmp ne i32 %237, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %236
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %236

245:                                              ; preds = %240
  %246 = load i32, i32* @R5_UPTODATE, align 4
  %247 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %248 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %247, i32 0, i32 1
  %249 = load %struct.r5dev*, %struct.r5dev** %248, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %249, i64 %251
  %253 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %252, i32 0, i32 0
  %254 = call i32 @test_bit(i32 %246, i32* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %245
  br label %258

257:                                              ; preds = %245
  br label %236

258:                                              ; preds = %256, %236
  %259 = load i32, i32* %12, align 4
  %260 = icmp slt i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @BUG_ON(i32 %261)
  %263 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %264 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %12, align 4
  %269 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %271 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %272 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %271, i32 0, i32 2
  %273 = call i32 @set_bit(i32 %270, i32* %272)
  %274 = load i32, i32* @STRIPE_OP_COMPUTE_BLK, align 4
  %275 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %276 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %275, i32 0, i32 6
  %277 = call i32 @set_bit(i32 %274, i32* %276)
  %278 = load i32, i32* @R5_Wantcompute, align 4
  %279 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %280 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %279, i32 0, i32 1
  %281 = load %struct.r5dev*, %struct.r5dev** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %281, i64 %283
  %285 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %284, i32 0, i32 0
  %286 = call i32 @set_bit(i32 %278, i32* %285)
  %287 = load i32, i32* @R5_Wantcompute, align 4
  %288 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %289 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %288, i32 0, i32 1
  %290 = load %struct.r5dev*, %struct.r5dev** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %290, i64 %292
  %294 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %293, i32 0, i32 0
  %295 = call i32 @set_bit(i32 %287, i32* %294)
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %298 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  store i32 %296, i32* %299, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %302 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  store i32 %300, i32* %303, align 4
  %304 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %305 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 2
  store i32 %307, i32* %305, align 8
  %308 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %309 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %308, i32 0, i32 4
  store i32 1, i32* %309, align 4
  store i32 1, i32* %5, align 4
  br label %338

310:                                              ; preds = %229, %222
  %311 = load i32, i32* @R5_Insync, align 4
  %312 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %313 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %312, i32 0, i32 0
  %314 = call i32 @test_bit(i32 %311, i32* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %334

316:                                              ; preds = %310
  %317 = load i32, i32* @R5_LOCKED, align 4
  %318 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %319 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %318, i32 0, i32 0
  %320 = call i32 @set_bit(i32 %317, i32* %319)
  %321 = load i32, i32* @R5_Wantread, align 4
  %322 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %323 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %322, i32 0, i32 0
  %324 = call i32 @set_bit(i32 %321, i32* %323)
  %325 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %326 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 8
  %329 = load i32, i32* %8, align 4
  %330 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %331 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %316, %310
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336, %145, %140, %133, %44, %4
  store i32 0, i32* %5, align 4
  br label %338

338:                                              ; preds = %337, %258, %190
  %339 = load i32, i32* %5, align 4
  ret i32 %339
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @want_replace(%struct.stripe_head*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
