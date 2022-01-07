; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_dirtying.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_dirtying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.stripe_head = type { i64, i32, i32, i32, %struct.r5dev* }
%struct.r5dev = type { i32, i64 }
%struct.stripe_head_state = type { i64, i64 }

@MaxSector = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"force RCW max_degraded=%u, recovery_cp=%llu sh->sector=%llu\0A\00", align 1
@R5_LOCKED = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_Wantcompute = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"for sector %llu, rmw=%d rcw=%d\0A\00", align 1
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"raid5 rmw %llu %d\00", align 1
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Read_old block %d for r-m-w\0A\00", align 1
@R5_Wantread = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Read_old block %d for Reconstruct\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"raid5 rcw %llu %d %d %d\00", align 1
@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32)* @handle_stripe_dirtying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe_dirtying(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2, i32 %3) #0 {
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca %struct.stripe_head_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.r5dev*, align 8
  %14 = alloca %struct.r5dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.r5dev*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %5, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %6, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %36, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @MaxSector, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %32 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30, %4
  store i32 1, i32* %10, align 4
  store i32 2, i32* %9, align 4
  %37 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %38 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %42 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40, i64 %43)
  br label %148

45:                                               ; preds = %30, %26
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %146, %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %147

51:                                               ; preds = %47
  %52 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %53 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %52, i32 0, i32 4
  %54 = load %struct.r5dev*, %struct.r5dev** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %54, i64 %56
  store %struct.r5dev* %57, %struct.r5dev** %13, align 8
  %58 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %59 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %65 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %62, %51
  %69 = load i32, i32* @R5_LOCKED, align 4
  %70 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %71 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %70, i32 0, i32 0
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @R5_UPTODATE, align 4
  %76 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %77 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %76, i32 0, i32 0
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @R5_Wantcompute, align 4
  %82 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %83 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @R5_Insync, align 4
  %88 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %89 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %100

95:                                               ; preds = %86
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 2, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %80, %74, %68, %62
  %102 = load i32, i32* @R5_OVERWRITE, align 4
  %103 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %104 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %103, i32 0, i32 0
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %146, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %110 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %107
  %114 = load i32, i32* @R5_LOCKED, align 4
  %115 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %116 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %115, i32 0, i32 0
  %117 = call i64 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %146, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @R5_UPTODATE, align 4
  %121 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %122 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %121, i32 0, i32 0
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @R5_Wantcompute, align 4
  %127 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %128 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %127, i32 0, i32 0
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @R5_Insync, align 4
  %133 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %134 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %133, i32 0, i32 0
  %135 = call i64 @test_bit(i32 %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %145

140:                                              ; preds = %131
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 2, %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %125, %119, %113, %107, %101
  br label %47

147:                                              ; preds = %47
  br label %148

148:                                              ; preds = %147, %36
  %149 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %150 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* @STRIPE_HANDLE, align 4
  %157 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %158 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %157, i32 0, i32 3
  %159 = call i32 @set_bit(i32 %156, i32* %158)
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %264

163:                                              ; preds = %148
  %164 = load i32, i32* %9, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %264

166:                                              ; preds = %163
  %167 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %168 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %166
  %174 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %175 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %180 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 (i64, i8*, i64, i32, ...) @blk_add_trace_msg(i64 %178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %181, i32 %182)
  br label %184

184:                                              ; preds = %173, %166
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %11, align 4
  br label %186

186:                                              ; preds = %262, %184
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %11, align 4
  %189 = icmp ne i32 %187, 0
  br i1 %189, label %190, label %263

190:                                              ; preds = %186
  %191 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %192 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %191, i32 0, i32 4
  %193 = load %struct.r5dev*, %struct.r5dev** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %193, i64 %195
  store %struct.r5dev* %196, %struct.r5dev** %14, align 8
  %197 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %198 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %190
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %204 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %262

207:                                              ; preds = %201, %190
  %208 = load i32, i32* @R5_LOCKED, align 4
  %209 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %210 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %209, i32 0, i32 0
  %211 = call i64 @test_bit(i32 %208, i32* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %262, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* @R5_UPTODATE, align 4
  %215 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %216 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %215, i32 0, i32 0
  %217 = call i64 @test_bit(i32 %214, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %262, label %219

219:                                              ; preds = %213
  %220 = load i32, i32* @R5_Wantcompute, align 4
  %221 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %222 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %221, i32 0, i32 0
  %223 = call i64 @test_bit(i32 %220, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %262, label %225

225:                                              ; preds = %219
  %226 = load i32, i32* @R5_Insync, align 4
  %227 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %228 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %227, i32 0, i32 0
  %229 = call i64 @test_bit(i32 %226, i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %262

231:                                              ; preds = %225
  %232 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %233 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %234 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %233, i32 0, i32 3
  %235 = call i64 @test_bit(i32 %232, i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %252

237:                                              ; preds = %231
  %238 = load i32, i32* %11, align 4
  %239 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @R5_LOCKED, align 4
  %241 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %242 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %241, i32 0, i32 0
  %243 = call i32 @set_bit(i32 %240, i32* %242)
  %244 = load i32, i32* @R5_Wantread, align 4
  %245 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %246 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %245, i32 0, i32 0
  %247 = call i32 @set_bit(i32 %244, i32* %246)
  %248 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %249 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %249, align 8
  br label %261

252:                                              ; preds = %231
  %253 = load i32, i32* @STRIPE_DELAYED, align 4
  %254 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %255 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %254, i32 0, i32 3
  %256 = call i32 @set_bit(i32 %253, i32* %255)
  %257 = load i32, i32* @STRIPE_HANDLE, align 4
  %258 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %259 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %258, i32 0, i32 3
  %260 = call i32 @set_bit(i32 %257, i32* %259)
  br label %261

261:                                              ; preds = %252, %237
  br label %262

262:                                              ; preds = %261, %225, %219, %213, %207, %201
  br label %186

263:                                              ; preds = %186
  br label %264

264:                                              ; preds = %263, %163, %148
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %268, label %389

268:                                              ; preds = %264
  %269 = load i32, i32* %10, align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %389

271:                                              ; preds = %268
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %361, %327, %271
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %11, align 4
  %276 = icmp ne i32 %274, 0
  br i1 %276, label %277, label %362

277:                                              ; preds = %273
  %278 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %279 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %278, i32 0, i32 4
  %280 = load %struct.r5dev*, %struct.r5dev** %279, align 8
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %280, i64 %282
  store %struct.r5dev* %283, %struct.r5dev** %16, align 8
  %284 = load i32, i32* @R5_OVERWRITE, align 4
  %285 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %286 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %285, i32 0, i32 0
  %287 = call i64 @test_bit(i32 %284, i32* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %361, label %289

289:                                              ; preds = %277
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %292 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %290, %293
  br i1 %294, label %295, label %361

295:                                              ; preds = %289
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %298 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %296, %299
  br i1 %300, label %301, label %361

301:                                              ; preds = %295
  %302 = load i32, i32* @R5_LOCKED, align 4
  %303 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %304 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %303, i32 0, i32 0
  %305 = call i64 @test_bit(i32 %302, i32* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %361, label %307

307:                                              ; preds = %301
  %308 = load i32, i32* @R5_UPTODATE, align 4
  %309 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %310 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %309, i32 0, i32 0
  %311 = call i64 @test_bit(i32 %308, i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %361, label %313

313:                                              ; preds = %307
  %314 = load i32, i32* @R5_Wantcompute, align 4
  %315 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %316 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %315, i32 0, i32 0
  %317 = call i64 @test_bit(i32 %314, i32* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %361, label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %10, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* @R5_Insync, align 4
  %323 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %324 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %323, i32 0, i32 0
  %325 = call i64 @test_bit(i32 %322, i32* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %319
  br label %273

328:                                              ; preds = %319
  %329 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %330 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %331 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %330, i32 0, i32 3
  %332 = call i64 @test_bit(i32 %329, i32* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %351

334:                                              ; preds = %328
  %335 = load i32, i32* %11, align 4
  %336 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* @R5_LOCKED, align 4
  %338 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %339 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %338, i32 0, i32 0
  %340 = call i32 @set_bit(i32 %337, i32* %339)
  %341 = load i32, i32* @R5_Wantread, align 4
  %342 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %343 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %342, i32 0, i32 0
  %344 = call i32 @set_bit(i32 %341, i32* %343)
  %345 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %346 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, 1
  store i64 %348, i64* %346, align 8
  %349 = load i32, i32* %15, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %15, align 4
  br label %360

351:                                              ; preds = %328
  %352 = load i32, i32* @STRIPE_DELAYED, align 4
  %353 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %354 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %353, i32 0, i32 3
  %355 = call i32 @set_bit(i32 %352, i32* %354)
  %356 = load i32, i32* @STRIPE_HANDLE, align 4
  %357 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %358 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %357, i32 0, i32 3
  %359 = call i32 @set_bit(i32 %356, i32* %358)
  br label %360

360:                                              ; preds = %351, %334
  br label %361

361:                                              ; preds = %360, %313, %307, %301, %295, %289, %277
  br label %273

362:                                              ; preds = %273
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %388

365:                                              ; preds = %362
  %366 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %367 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %366, i32 0, i32 1
  %368 = load %struct.TYPE_2__*, %struct.TYPE_2__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %388

372:                                              ; preds = %365
  %373 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %374 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %373, i32 0, i32 1
  %375 = load %struct.TYPE_2__*, %struct.TYPE_2__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %379 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* %15, align 4
  %383 = load i32, i32* @STRIPE_DELAYED, align 4
  %384 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %385 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %384, i32 0, i32 3
  %386 = call i64 @test_bit(i32 %383, i32* %385)
  %387 = call i32 (i64, i8*, i64, i32, ...) @blk_add_trace_msg(i64 %377, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %380, i32 %381, i32 %382, i64 %386)
  br label %388

388:                                              ; preds = %372, %365, %362
  br label %389

389:                                              ; preds = %388, %268, %264
  %390 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %391 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %400, label %394

394:                                              ; preds = %389
  %395 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %396 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %397 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %396, i32 0, i32 3
  %398 = call i64 @test_bit(i32 %395, i32* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %424, label %400

400:                                              ; preds = %394, %389
  %401 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %402 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %400
  %406 = load i32, i32* %10, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = load i32, i32* %9, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %424

411:                                              ; preds = %408, %405
  %412 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %413 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %414 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %413, i32 0, i32 3
  %415 = call i64 @test_bit(i32 %412, i32* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %411
  %418 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %419 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %420 = load i32, i32* %10, align 4
  %421 = icmp eq i32 %420, 0
  %422 = zext i1 %421 to i32
  %423 = call i32 @schedule_reconstruction(%struct.stripe_head* %418, %struct.stripe_head_state* %419, i32 %422, i32 0)
  br label %424

424:                                              ; preds = %417, %411, %408, %400, %394
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @blk_add_trace_msg(i64, i8*, i64, i32, ...) #1

declare dso_local i32 @schedule_reconstruction(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
