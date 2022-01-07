; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_analyse_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_analyse_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, i32, %struct.r5dev*, %struct.r5conf* }
%struct.r5dev = type { i32, i64, i64, i64 }
%struct.r5conf = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.stripe_head_state = type { i32*, i32, i32, i32, i32, i32, %struct.md_rdev*, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.md_rdev = type { i64, i32, i32 }

@STRIPE_EXPAND_SOURCE = common dso_local global i32 0, align 4
@STRIPE_EXPAND_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"check %d: state 0x%lx read %p write %p written %p\0A\00", align 1
@R5_UPTODATE = common dso_local global i32 0, align 4
@STRIPE_BIOFILL_RUN = common dso_local global i32 0, align 4
@R5_Wantfill = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@R5_Wantcompute = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_ReadRepl = common dso_local global i32 0, align 4
@R5_NeedReplace = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@BlockedBadBlocks = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@R5_ReadError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@R5_Expanded = common dso_local global i32 0, align 4
@R5_WriteError = common dso_local global i32 0, align 4
@R5_MadeGood = common dso_local global i32 0, align 4
@R5_MadeGoodRepl = common dso_local global i32 0, align 4
@R5_ReWrite = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, %struct.stripe_head_state*)* @analyse_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyse_stripe(%struct.stripe_head* %0, %struct.stripe_head_state* %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca %struct.stripe_head_state*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r5dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.md_rdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca %struct.md_rdev*, align 8
  %16 = alloca %struct.md_rdev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %4, align 8
  %17 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 4
  %19 = load %struct.r5conf*, %struct.r5conf** %18, align 8
  store %struct.r5conf* %19, %struct.r5conf** %5, align 8
  %20 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %24 = call i32 @memset(%struct.stripe_head_state* %23, i32 0, i32 88)
  %25 = load i32, i32* @STRIPE_EXPAND_SOURCE, align 4
  %26 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %27 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %26, i32 0, i32 2
  %28 = call i8* @test_bit(i32 %25, i32* %27)
  %29 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %30 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %29, i32 0, i32 15
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @STRIPE_EXPAND_READY, align 4
  %32 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %33 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %32, i32 0, i32 2
  %34 = call i8* @test_bit(i32 %31, i32* %33)
  %35 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %36 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %35, i32 0, i32 14
  store i8* %34, i8** %36, align 8
  %37 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %38 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 -1, i32* %40, align 4
  %41 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %42 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 -1, i32* %44, align 4
  %45 = call i32 (...) @rcu_read_lock()
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %562, %2
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %563

51:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  %52 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %53 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %52, i32 0, i32 3
  %54 = load %struct.r5dev*, %struct.r5dev** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %54, i64 %56
  store %struct.r5dev* %57, %struct.r5dev** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %60 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %63 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %66 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %69 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i64 %64, i64 %67, i64 %70)
  %72 = load i32, i32* @R5_UPTODATE, align 4
  %73 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %74 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %73, i32 0, i32 0
  %75 = call i8* @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %51
  %78 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %79 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i32, i32* @STRIPE_BIOFILL_RUN, align 4
  %84 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %85 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %84, i32 0, i32 2
  %86 = call i8* @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @R5_Wantfill, align 4
  %90 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %91 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %82, %77, %51
  %94 = load i32, i32* @R5_LOCKED, align 4
  %95 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %96 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %95, i32 0, i32 0
  %97 = call i8* @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %101 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %100, i32 0, i32 13
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %93
  %105 = load i32, i32* @R5_UPTODATE, align 4
  %106 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %107 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %106, i32 0, i32 0
  %108 = call i8* @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %112 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110, %104
  %116 = load i32, i32* @R5_Wantcompute, align 4
  %117 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %118 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %117, i32 0, i32 0
  %119 = call i8* @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %123 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %127 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 2
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  br label %132

132:                                              ; preds = %121, %115
  %133 = load i32, i32* @R5_Wantfill, align 4
  %134 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %135 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %134, i32 0, i32 0
  %136 = call i8* @test_bit(i32 %133, i32* %135)
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %140 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %154

143:                                              ; preds = %132
  %144 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %145 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %150 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %138
  %155 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %156 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %161 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @R5_OVERWRITE, align 4
  %165 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %166 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %165, i32 0, i32 0
  %167 = call i8* @test_bit(i32 %164, i32* %166)
  %168 = icmp ne i8* %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %159
  %170 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %171 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %169, %159
  br label %175

175:                                              ; preds = %174, %154
  %176 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %177 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %182 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %187 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %186, i32 0, i32 1
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call %struct.md_rdev* @rcu_dereference(i32 %193)
  store %struct.md_rdev* %194, %struct.md_rdev** %10, align 8
  %195 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %196 = icmp ne %struct.md_rdev* %195, null
  br i1 %196, label %197, label %226

197:                                              ; preds = %185
  %198 = load i32, i32* @Faulty, align 4
  %199 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %200 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %199, i32 0, i32 1
  %201 = call i8* @test_bit(i32 %198, i32* %200)
  %202 = icmp ne i8* %201, null
  br i1 %202, label %226, label %203

203:                                              ; preds = %197
  %204 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %205 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %208 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @STRIPE_SECTORS, align 8
  %211 = add nsw i64 %209, %210
  %212 = icmp sge i64 %206, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %203
  %214 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %215 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %216 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @STRIPE_SECTORS, align 8
  %219 = call i32 @is_badblock(%struct.md_rdev* %214, i64 %217, i64 %218, i32* %11, i32* %12)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %213
  %222 = load i32, i32* @R5_ReadRepl, align 4
  %223 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %224 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %223, i32 0, i32 0
  %225 = call i32 @set_bit(i32 %222, i32* %224)
  br label %248

226:                                              ; preds = %213, %203, %197, %185
  %227 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %228 = icmp ne %struct.md_rdev* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load i32, i32* @R5_NeedReplace, align 4
  %231 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %232 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %231, i32 0, i32 0
  %233 = call i32 @set_bit(i32 %230, i32* %232)
  br label %234

234:                                              ; preds = %229, %226
  %235 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %236 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %235, i32 0, i32 1
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call %struct.md_rdev* @rcu_dereference(i32 %242)
  store %struct.md_rdev* %243, %struct.md_rdev** %10, align 8
  %244 = load i32, i32* @R5_ReadRepl, align 4
  %245 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %246 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %245, i32 0, i32 0
  %247 = call i32 @clear_bit(i32 %244, i32* %246)
  br label %248

248:                                              ; preds = %234, %221
  %249 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %250 = icmp ne %struct.md_rdev* %249, null
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load i32, i32* @Faulty, align 4
  %253 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %254 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %253, i32 0, i32 1
  %255 = call i8* @test_bit(i32 %252, i32* %254)
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store %struct.md_rdev* null, %struct.md_rdev** %10, align 8
  br label %258

258:                                              ; preds = %257, %251, %248
  %259 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %260 = icmp ne %struct.md_rdev* %259, null
  br i1 %260, label %261, label %297

261:                                              ; preds = %258
  %262 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %263 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %264 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @STRIPE_SECTORS, align 8
  %267 = call i32 @is_badblock(%struct.md_rdev* %262, i64 %265, i64 %266, i32* %11, i32* %12)
  store i32 %267, i32* %13, align 4
  %268 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %269 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %268, i32 0, i32 6
  %270 = load %struct.md_rdev*, %struct.md_rdev** %269, align 8
  %271 = icmp eq %struct.md_rdev* %270, null
  br i1 %271, label %272, label %296

272:                                              ; preds = %261
  %273 = load i32, i32* @Blocked, align 4
  %274 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %275 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %274, i32 0, i32 1
  %276 = call i8* @test_bit(i32 %273, i32* %275)
  %277 = icmp ne i8* %276, null
  br i1 %277, label %281, label %278

278:                                              ; preds = %272
  %279 = load i32, i32* %13, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %278, %272
  %282 = load i32, i32* %13, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i32, i32* @BlockedBadBlocks, align 4
  %286 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %287 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %286, i32 0, i32 1
  %288 = call i32 @set_bit(i32 %285, i32* %287)
  br label %289

289:                                              ; preds = %284, %281
  %290 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %291 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %292 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %291, i32 0, i32 6
  store %struct.md_rdev* %290, %struct.md_rdev** %292, align 8
  %293 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %294 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %293, i32 0, i32 2
  %295 = call i32 @atomic_inc(i32* %294)
  br label %296

296:                                              ; preds = %289, %278, %261
  br label %297

297:                                              ; preds = %296, %258
  %298 = load i32, i32* @R5_Insync, align 4
  %299 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %300 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %299, i32 0, i32 0
  %301 = call i32 @clear_bit(i32 %298, i32* %300)
  %302 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %303 = icmp ne %struct.md_rdev* %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %297
  br label %377

305:                                              ; preds = %297
  %306 = load i32, i32* %13, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %330

308:                                              ; preds = %305
  %309 = load i32, i32* @WriteErrorSeen, align 4
  %310 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %311 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %310, i32 0, i32 1
  %312 = call i8* @test_bit(i32 %309, i32* %311)
  %313 = icmp ne i8* %312, null
  br i1 %313, label %329, label %314

314:                                              ; preds = %308
  %315 = load i32, i32* @R5_UPTODATE, align 4
  %316 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %317 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %316, i32 0, i32 0
  %318 = call i8* @test_bit(i32 %315, i32* %317)
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %329

320:                                              ; preds = %314
  %321 = load i32, i32* @R5_Insync, align 4
  %322 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %323 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %322, i32 0, i32 0
  %324 = call i32 @set_bit(i32 %321, i32* %323)
  %325 = load i32, i32* @R5_ReadError, align 4
  %326 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %327 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %326, i32 0, i32 0
  %328 = call i32 @set_bit(i32 %325, i32* %327)
  br label %329

329:                                              ; preds = %320, %314, %308
  br label %376

330:                                              ; preds = %305
  %331 = load i32, i32* @In_sync, align 4
  %332 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %333 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %332, i32 0, i32 1
  %334 = call i8* @test_bit(i32 %331, i32* %333)
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = load i32, i32* @R5_Insync, align 4
  %338 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %339 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %338, i32 0, i32 0
  %340 = call i32 @set_bit(i32 %337, i32* %339)
  br label %375

341:                                              ; preds = %330
  %342 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %343 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @STRIPE_SECTORS, align 8
  %346 = add nsw i64 %344, %345
  %347 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %348 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp sle i64 %346, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %341
  %352 = load i32, i32* @R5_Insync, align 4
  %353 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %354 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %353, i32 0, i32 0
  %355 = call i32 @set_bit(i32 %352, i32* %354)
  br label %374

356:                                              ; preds = %341
  %357 = load i32, i32* @R5_UPTODATE, align 4
  %358 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %359 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %358, i32 0, i32 0
  %360 = call i8* @test_bit(i32 %357, i32* %359)
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %373

362:                                              ; preds = %356
  %363 = load i32, i32* @R5_Expanded, align 4
  %364 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %365 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %364, i32 0, i32 0
  %366 = call i8* @test_bit(i32 %363, i32* %365)
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %373

368:                                              ; preds = %362
  %369 = load i32, i32* @R5_Insync, align 4
  %370 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %371 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %370, i32 0, i32 0
  %372 = call i32 @set_bit(i32 %369, i32* %371)
  br label %373

373:                                              ; preds = %368, %362, %356
  br label %374

374:                                              ; preds = %373, %351
  br label %375

375:                                              ; preds = %374, %336
  br label %376

376:                                              ; preds = %375, %329
  br label %377

377:                                              ; preds = %376, %304
  %378 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %379 = icmp ne %struct.md_rdev* %378, null
  br i1 %379, label %380, label %425

380:                                              ; preds = %377
  %381 = load i32, i32* @R5_WriteError, align 4
  %382 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %383 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %382, i32 0, i32 0
  %384 = call i8* @test_bit(i32 %381, i32* %383)
  %385 = icmp ne i8* %384, null
  br i1 %385, label %386, label %425

386:                                              ; preds = %380
  %387 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %388 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %387, i32 0, i32 1
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call %struct.md_rdev* @rcu_dereference(i32 %394)
  store %struct.md_rdev* %395, %struct.md_rdev** %14, align 8
  %396 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %397 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %398 = icmp eq %struct.md_rdev* %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %386
  %400 = load i32, i32* @R5_Insync, align 4
  %401 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %402 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %401, i32 0, i32 0
  %403 = call i32 @clear_bit(i32 %400, i32* %402)
  br label %404

404:                                              ; preds = %399, %386
  %405 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %406 = icmp ne %struct.md_rdev* %405, null
  br i1 %406, label %407, label %419

407:                                              ; preds = %404
  %408 = load i32, i32* @Faulty, align 4
  %409 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %410 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %409, i32 0, i32 1
  %411 = call i8* @test_bit(i32 %408, i32* %410)
  %412 = icmp ne i8* %411, null
  br i1 %412, label %419, label %413

413:                                              ; preds = %407
  %414 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %415 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %414, i32 0, i32 2
  store i32 1, i32* %415, align 4
  %416 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %417 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %416, i32 0, i32 2
  %418 = call i32 @atomic_inc(i32* %417)
  br label %424

419:                                              ; preds = %407, %404
  %420 = load i32, i32* @R5_WriteError, align 4
  %421 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %422 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %421, i32 0, i32 0
  %423 = call i32 @clear_bit(i32 %420, i32* %422)
  br label %424

424:                                              ; preds = %419, %413
  br label %425

425:                                              ; preds = %424, %380, %377
  %426 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %427 = icmp ne %struct.md_rdev* %426, null
  br i1 %427, label %428, label %464

428:                                              ; preds = %425
  %429 = load i32, i32* @R5_MadeGood, align 4
  %430 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %431 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %430, i32 0, i32 0
  %432 = call i8* @test_bit(i32 %429, i32* %431)
  %433 = icmp ne i8* %432, null
  br i1 %433, label %434, label %464

434:                                              ; preds = %428
  %435 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %436 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %435, i32 0, i32 1
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %436, align 8
  %438 = load i32, i32* %8, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = call %struct.md_rdev* @rcu_dereference(i32 %442)
  store %struct.md_rdev* %443, %struct.md_rdev** %15, align 8
  %444 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %445 = icmp ne %struct.md_rdev* %444, null
  br i1 %445, label %446, label %458

446:                                              ; preds = %434
  %447 = load i32, i32* @Faulty, align 4
  %448 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %449 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %448, i32 0, i32 1
  %450 = call i8* @test_bit(i32 %447, i32* %449)
  %451 = icmp ne i8* %450, null
  br i1 %451, label %458, label %452

452:                                              ; preds = %446
  %453 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %454 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %453, i32 0, i32 2
  store i32 1, i32* %454, align 4
  %455 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %456 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %455, i32 0, i32 2
  %457 = call i32 @atomic_inc(i32* %456)
  br label %463

458:                                              ; preds = %446, %434
  %459 = load i32, i32* @R5_MadeGood, align 4
  %460 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %461 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %460, i32 0, i32 0
  %462 = call i32 @clear_bit(i32 %459, i32* %461)
  br label %463

463:                                              ; preds = %458, %452
  br label %464

464:                                              ; preds = %463, %428, %425
  %465 = load i32, i32* @R5_MadeGoodRepl, align 4
  %466 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %467 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %466, i32 0, i32 0
  %468 = call i8* @test_bit(i32 %465, i32* %467)
  %469 = icmp ne i8* %468, null
  br i1 %469, label %470, label %500

470:                                              ; preds = %464
  %471 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %472 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %471, i32 0, i32 1
  %473 = load %struct.TYPE_3__*, %struct.TYPE_3__** %472, align 8
  %474 = load i32, i32* %8, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = call %struct.md_rdev* @rcu_dereference(i32 %478)
  store %struct.md_rdev* %479, %struct.md_rdev** %16, align 8
  %480 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %481 = icmp ne %struct.md_rdev* %480, null
  br i1 %481, label %482, label %494

482:                                              ; preds = %470
  %483 = load i32, i32* @Faulty, align 4
  %484 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %485 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %484, i32 0, i32 1
  %486 = call i8* @test_bit(i32 %483, i32* %485)
  %487 = icmp ne i8* %486, null
  br i1 %487, label %494, label %488

488:                                              ; preds = %482
  %489 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %490 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %489, i32 0, i32 2
  store i32 1, i32* %490, align 4
  %491 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %492 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %491, i32 0, i32 2
  %493 = call i32 @atomic_inc(i32* %492)
  br label %499

494:                                              ; preds = %482, %470
  %495 = load i32, i32* @R5_MadeGoodRepl, align 4
  %496 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %497 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %496, i32 0, i32 0
  %498 = call i32 @clear_bit(i32 %495, i32* %497)
  br label %499

499:                                              ; preds = %494, %488
  br label %500

500:                                              ; preds = %499, %464
  %501 = load i32, i32* @R5_Insync, align 4
  %502 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %503 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %502, i32 0, i32 0
  %504 = call i8* @test_bit(i32 %501, i32* %503)
  %505 = icmp ne i8* %504, null
  br i1 %505, label %515, label %506

506:                                              ; preds = %500
  %507 = load i32, i32* @R5_ReadError, align 4
  %508 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %509 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %508, i32 0, i32 0
  %510 = call i32 @clear_bit(i32 %507, i32* %509)
  %511 = load i32, i32* @R5_ReWrite, align 4
  %512 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %513 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %512, i32 0, i32 0
  %514 = call i32 @clear_bit(i32 %511, i32* %513)
  br label %515

515:                                              ; preds = %506, %500
  %516 = load i32, i32* @R5_ReadError, align 4
  %517 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %518 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %517, i32 0, i32 0
  %519 = call i8* @test_bit(i32 %516, i32* %518)
  %520 = icmp ne i8* %519, null
  br i1 %520, label %521, label %526

521:                                              ; preds = %515
  %522 = load i32, i32* @R5_Insync, align 4
  %523 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %524 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %523, i32 0, i32 0
  %525 = call i32 @clear_bit(i32 %522, i32* %524)
  br label %526

526:                                              ; preds = %521, %515
  %527 = load i32, i32* @R5_Insync, align 4
  %528 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %529 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %528, i32 0, i32 0
  %530 = call i8* @test_bit(i32 %527, i32* %529)
  %531 = icmp ne i8* %530, null
  br i1 %531, label %562, label %532

532:                                              ; preds = %526
  %533 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %534 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 8
  %536 = icmp slt i32 %535, 2
  br i1 %536, label %537, label %547

537:                                              ; preds = %532
  %538 = load i32, i32* %8, align 4
  %539 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %540 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %539, i32 0, i32 0
  %541 = load i32*, i32** %540, align 8
  %542 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %543 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 8
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %541, i64 %545
  store i32 %538, i32* %546, align 4
  br label %547

547:                                              ; preds = %537, %532
  %548 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %549 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %548, i32 0, i32 3
  %550 = load i32, i32* %549, align 8
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %549, align 8
  %552 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %553 = icmp ne %struct.md_rdev* %552, null
  br i1 %553, label %554, label %561

554:                                              ; preds = %547
  %555 = load i32, i32* @Faulty, align 4
  %556 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %557 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %556, i32 0, i32 1
  %558 = call i8* @test_bit(i32 %555, i32* %557)
  %559 = icmp ne i8* %558, null
  br i1 %559, label %561, label %560

560:                                              ; preds = %554
  store i32 1, i32* %9, align 4
  br label %561

561:                                              ; preds = %560, %554, %547
  br label %562

562:                                              ; preds = %561, %526
  br label %47

563:                                              ; preds = %47
  %564 = load i32, i32* @STRIPE_SYNCING, align 4
  %565 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %566 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %565, i32 0, i32 2
  %567 = call i8* @test_bit(i32 %564, i32* %566)
  %568 = icmp ne i8* %567, null
  br i1 %568, label %569, label %597

569:                                              ; preds = %563
  %570 = load i32, i32* %9, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %590, label %572

572:                                              ; preds = %569
  %573 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %574 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %573, i32 0, i32 1
  %575 = load i64, i64* %574, align 8
  %576 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %577 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %576, i32 0, i32 0
  %578 = load %struct.TYPE_4__*, %struct.TYPE_4__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = icmp sge i64 %575, %580
  br i1 %581, label %590, label %582

582:                                              ; preds = %572
  %583 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %584 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %585 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %584, i32 0, i32 0
  %586 = load %struct.TYPE_4__*, %struct.TYPE_4__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %586, i32 0, i32 1
  %588 = call i8* @test_bit(i32 %583, i32* %587)
  %589 = icmp ne i8* %588, null
  br i1 %589, label %590, label %593

590:                                              ; preds = %582, %572, %569
  %591 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %592 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %591, i32 0, i32 4
  store i32 1, i32* %592, align 4
  br label %596

593:                                              ; preds = %582
  %594 = load %struct.stripe_head_state*, %struct.stripe_head_state** %4, align 8
  %595 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %594, i32 0, i32 5
  store i32 1, i32* %595, align 8
  br label %596

596:                                              ; preds = %593, %590
  br label %597

597:                                              ; preds = %596, %563
  %598 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @memset(%struct.stripe_head_state*, i32, i32) #1

declare dso_local i8* @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @is_badblock(%struct.md_rdev*, i64, i64, i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
